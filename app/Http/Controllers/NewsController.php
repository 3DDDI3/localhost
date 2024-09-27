<?php

namespace App\Http\Controllers;

use App\Models\Lending\News;
use GuzzleHttp\Client;

use function GuzzleHttp\Promise\queue;

class NewsController extends Controller
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
        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
            (object)[
                'name' => 'Новости',
                'url' => 'news'
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


        $news = News::query()
            ->where(['hide' => 0])
            ->orderBy('created_at', 'desc')
            ->paginate(12);

        if (!$news) abort(404, 'Не удалось найти новости');

        return view('pages.news', [
            'breadcrumbs' => $breadCrumbs,
            'news' => $news,
            'currencies' => $currencies,
        ]);
    }

    public function new($url)
    {
        $news = News::query()
            ->where([
                'url' => $url,
                'hide' => 0
            ])
            ->first();

        if (!$news) abort(404, 'Не удалось найти новость');

        $otherNews = News::query()
            ->where('url', '<>', $url)
            ->where(['hide' => 0])
            ->orderBy('created_at', 'desc')
            ->take(6)
            ->get();

        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
            (object)[
                'name' => 'Новости',
                'url' => '/news'
            ],
            (object)[
                'name' => $news->title,
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


        return view('pages.new', [
            'breadcrumbs' => $breadCrumbs,
            'news' => $news,
            'otherNews' => $otherNews,
            'currencies' => $currencies,
        ]);
    }
}
