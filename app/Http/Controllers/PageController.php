<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use App\Models\Lending\Page;
use App\Models\Lending\Personal;
use GuzzleHttp\Client;

class PageController extends Controller
{
    private $samotour_url;
    private $samotour_token;

    public function __construct()
    {
        $this->samotour_url = config('samotour.samotour_api_url');
        $this->samotour_token = config('samotour.samotour_api_token');
    }

    public function index($url)
    {
        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
        ]);

        $personal = Personal::query()
            ->where(['hide' => 0])
            ->orderBy('rating', 'desc')
            ->get();

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

        $object = Page::query()
            ->where([
                'url' => $url,
                'hide' => 0
            ])
            ->first();

        if (!$object) abort(404, 'Не удалось найти страницу');

        switch ($url) {
            case 'o-kompanii':

                $gallery = Gallery::query()
                    ->where([
                        'item_type' => 'about',
                        'item_id' => 1
                    ])
                    ->orderBy('rating', 'desc')
                    ->get();

                $breadCrumbs->push((object)[
                    'name' => $object->title,
                    'url' => $object->url,
                ]);

                return view('pages.about-company', [
                    'object' => $object,
                    'breadcrumbs' => $breadCrumbs,
                    'personal' => $personal,
                    'currencies' => $currencies,
                    'gallery' => $gallery
                ]);
                break;
            case 'turistam':
                $breadCrumbs->push((object)[
                    'name' => $object->title,
                    'url' => $object->url,
                ]);

                return view('pages.tourist', [
                    'object' => $object,
                    'breadcrumbs' => $breadCrumbs,
                    'currencies' => $currencies,
                ]);
                break;

            case 'agentstvam':
                $breadCrumbs->push((object)[
                    'name' => $object->title,
                    'url' => $object->url,
                ]);

                return view('pages.agency', [
                    'object' => $object,
                    'breadcrumbs' => $breadCrumbs,
                    'currencies' => $currencies,
                ]);
                break;

            case 'kontakty':
                $breadCrumbs->push((object)[
                    'name' => $object->title,
                    'url' => $object->url,
                ]);

                return view('pages.contacts', [
                    'object' => $object,
                    'breadcrumbs' => $breadCrumbs,
                    'currencies' => $currencies,
                    'personal' => $personal,
                ]);
                break;

                $breadCrumbs->push((object)[
                    'name' => $object->title,
                    'url' => $object->url,
                ]);

                return view('pages.page', [
                    'object' => $object,
                    'breadcrumbs' => $breadCrumbs,
                    'currencies' => $currencies,
                ]);
                break;
        }
    }
}
