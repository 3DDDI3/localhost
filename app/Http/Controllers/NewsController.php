<?php

namespace App\Http\Controllers;

use App\Models\Lending\News;
use GuzzleHttp\Client;

use function GuzzleHttp\Promise\queue;

class NewsController extends Controller
{
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

        $client = new Client(['verify' => false]);
        $res = $client->get('https://online.mercury-europe.ru/export/default.php?samo_action=api&version=1.0&oauth_token=5104feaa290d42d7a60d4b8710451fcd&type=json&action=Currency_CURRENCIES');
        $currencyBody = json_decode($res->getBody()->getContents())->Currency_CURRENCIES;

        $currencies = collect();

        foreach ($currencyBody as $currencyBase) {
            if ($currencyBase->name == "RUB") {
                foreach ($currencyBody as $currency) {
                    if ($currency->name == "USD" || $currency->name == "EUR" || $currency->name == "CNY") {
                        $res = $client->get('https://online.mercury-europe.ru/export/default.php?samo_action=api&version=1.0&oauth_token=5104feaa290d42d7a60d4b8710451fcd&type=json&action=Currency_RATES&CURRENCY=' . $currency->id . '&CURRENCYBASE=' . $currencyBase->id);
                        $currencyContent = json_decode($res->getBody()->getContents())->Currency_RATES[0];
                        $currencies->push((object)[
                            'currency' => $currency->name . "/" . $currencyBase->name,
                            'rate' => round($currencyContent->rate, 2),
                        ]);
                    }
                }
            }
        }

        $news = News::query()->orderBy('created_at', 'desc')->paginate(12);

        if (!$news) abort(404, 'Не удалось найти новости');

        return view('pages.news', [
            'breadcrumbs' => $breadCrumbs,
            'news' => $news,
            'currencies' => $currencies,
        ]);
    }

    public function new($url)
    {
        $news = News::query()->where(['url' => $url])->first();

        if (!$news) abort(404, 'Не удалось найти новость');

        $otherNews = News::query()->where('url', '<>', $url)->orderBy('created_at', 'desc')->take(6)->get();

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

        $client = new Client(['verify' => false]);
        $res = $client->get('https://online.mercury-europe.ru/export/default.php?samo_action=api&version=1.0&oauth_token=5104feaa290d42d7a60d4b8710451fcd&type=json&action=Currency_CURRENCIES');
        $currencyBody = json_decode($res->getBody()->getContents())->Currency_CURRENCIES;

        $currencies = collect();

        foreach ($currencyBody as $currencyBase) {
            if ($currencyBase->name == "RUB") {
                foreach ($currencyBody as $currency) {
                    if ($currency->name == "USD" || $currency->name == "EUR" || $currency->name == "CNY") {
                        $res = $client->get('https://online.mercury-europe.ru/export/default.php?samo_action=api&version=1.0&oauth_token=5104feaa290d42d7a60d4b8710451fcd&type=json&action=Currency_RATES&CURRENCY=' . $currency->id . '&CURRENCYBASE=' . $currencyBase->id);
                        $currencyContent = json_decode($res->getBody()->getContents())->Currency_RATES[0];
                        $currencies->push((object)[
                            'currency' => $currency->name . "/" . $currencyBase->name,
                            'rate' => round($currencyContent->rate, 2),
                        ]);
                    }
                }
            }
        }

        return view('pages.new', [
            'breadcrumbs' => $breadCrumbs,
            'news' => $news,
            'otherNews' => $otherNews,
            'currencies' => $currencies,
        ]);
    }
}
