<?php

namespace App\Http\Controllers;

use App\Models\Lending\Blog;
use GuzzleHttp\Client;
use Illuminate\Http\Request;

class BlogsController extends Controller
{

    private $samotour_url;
    private $samotour_token;

    public function __construct()
    {
        $this->samotour_url = config('samotour.samotour_api_url');
        $this->samotour_token = config('samotour.samotour_api_token');
    }

    public function index()
    {
        $blogs = Blog::query()
            ->where(['hide' => 0])
            ->orderBy('rating', 'desc')
            ->orderBy('created_at', 'desc')
            ->paginate(5);

        if (!$blogs) abort(404, 'Что-то пошло не так');

        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
            (object)[
                'name' => 'Блог',
            ]
        ]);

        $currencies = collect();

        try {
            $client = new Client(['verify' => false]);
            $res = $client->get("$this->samotour_url&oauth_token=$this->samotour_token&type=json&action=Currency_CURRENCIES");
            $currencyBody = json_decode($res->getBody()->getContents())->Currency_CURRENCIES;

            foreach ($currencyBody as $currencyBase) {
                if ($currencyBase->name == "RUB") {
                    foreach ($currencyBody as $currency) {
                        if ($currency->name == "USD" || $currency->name == "EUR" || $currency->name == "CNY") {
                            $res = $client->get("$this->samotour_url&oauth_token=$this->samotour_token&type=json&action=Currency_RATES&CURRENCY=$currency->id&CURRENCYBASE=$currencyBase->id");
                            $currencyContent = json_decode($res->getBody()->getContents())->Currency_RATES[0];
                            $currencies->push((object)[
                                'currency' => $currency->name . "/" . $currencyBase->name,
                                'rate' => round($currencyContent->rate, 2),
                            ]);
                        }
                    }
                }
            }
        } catch (\Throwable $th) {
        }

        return view('pages.blogs', [
            'breadcrumbs' => $breadCrumbs,
            'blogs' => $blogs,
            'currencies' => $currencies,
        ]);
    }

    public function blog($url)
    {
        $blog = Blog::query()
            ->where([
                'url' => $url,
                'hide' => 0
            ])
            ->first();

        $otherBlogs = Blog::query()
            ->where('url', '<>', $url)
            ->where(['hide' => 0])
            ->take(6)
            ->get();

        if (!$blog) abort(404, 'Что-то пошло не так');

        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
            (object)[
                'name' => 'Блог',
                'url' => '/blogs'
            ],
            (object)[
                'name' => $blog->title,
            ],
        ]);

        $currencies = collect();

        try {
            $client = new Client(['verify' => false]);
            $res = $client->get("$this->samotour_url&oauth_token=$this->samotour_token&type=json&action=Currency_CURRENCIES");
            $currencyBody = json_decode($res->getBody()->getContents())->Currency_CURRENCIES;

            foreach ($currencyBody as $currencyBase) {
                if ($currencyBase->name == "RUB") {
                    foreach ($currencyBody as $currency) {
                        if ($currency->name == "USD" || $currency->name == "EUR" || $currency->name == "CNY") {
                            $res = $client->get("$this->samotour_url&oauth_token=$this->samotour_token&type=json&action=Currency_RATES&CURRENCY=$currency->id&CURRENCYBASE=$currencyBase->id");
                            $currencyContent = json_decode($res->getBody()->getContents())->Currency_RATES[0];
                            $currencies->push((object)[
                                'currency' => $currency->name . "/" . $currencyBase->name,
                                'rate' => round($currencyContent->rate, 2),
                            ]);
                        }
                    }
                }
            }
        } catch (\Throwable $th) {
        }


        return view('pages.blog', [
            'breadcrumbs' => $breadCrumbs,
            'blog' => $blog,
            'otherBlogs' => $otherBlogs,
            'currencies' => $currencies,
        ]);
    }
}
