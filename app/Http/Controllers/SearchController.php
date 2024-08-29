<?php

namespace App\Http\Controllers;

use App\Models\Lending\Blog;
use App\Models\Lending\News;
use App\Models\Lending\Tour;
use GuzzleHttp\Client;
use Illuminate\Pagination\LengthAwarePaginator;

class SearchController extends Controller
{
    public function index()
    {
        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
            (object)[
                'name' => 'Поиск',
            ],
        ]);

        $currencies = collect();

        try {
            $client = new Client(['verify' => false]);
            $res = $client->get('https://online.mercury-europe.ru/export/default.php?samo_action=api&version=1.0&oauth_token=5104feaa290d42d7a60d4b8710451fcd&type=json&action=Currency_CURRENCIES');
            $currencyBody = json_decode($res->getBody()->getContents())->Currency_CURRENCIES;

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
        } catch (\Throwable $th) {
        }

        if (empty(request()->search)) abort(404, 'Не удалось найти');

        $tours = Tour::query()
            ->where(['hide' => 0])
            ->where('title', 'like',  sprintf('%%%s%%', request()->search))
            ->orWhere('description', 'like', sprintf('%%%s%%', request()->search))
            ->orWhere('subtitle', 'like',  sprintf('%%%s%%', request()->search))
            ->orderBy('rating', 'desc')
            ->get();

        $blogs = Blog::query()
            ->where(['hide' => 0])
            ->where('title', 'like', sprintf('%%%s%%', request()->search))
            ->orWhere('text', 'like', sprintf('%%%s%%', request()->search))
            ->orderBy('rating', 'desc')
            ->get();

        $news = News::query()
            ->where(['hide' => 0])
            ->where('text', 'like', sprintf('%%%s%%', request()->search))
            ->orWhere('title', 'like', sprintf('%%%s%%', request()->search))
            ->orderBy('rating', 'desc')
            ->get();

        $results = $tours->concat($blogs)->concat($news);

        if ($results->count() == 0) abort(404, 'Не удалось найти');

        $currentPage = LengthAwarePaginator::resolveCurrentPage();
        $perPage = 10;
        $currentResults = $results->slice(($currentPage - 1) * $perPage, $perPage)->all();

        $results = new LengthAwarePaginator($currentResults, $results->count(), $perPage, $currentPage, [
            'path' => LengthAwarePaginator::resolveCurrentPath(),
        ]);

        return view('pages.search', [
            'breadcrumbs' => $breadCrumbs,
            'currencies' => $currencies,
            'results' => $results,
        ]);
    }
}
