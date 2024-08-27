<?php

namespace App\Http\Controllers;

use App\Models\Lending\Page;
use App\Models\Lending\Personal;
use GuzzleHttp\Client;

class PageController extends Controller
{
    public function index($url)
    {

        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
        ]);

        $personal = Personal::query()->orderBy('rating', 'desc')->get();

        $object = Page::query()->where(['url' => $url])->first();

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

        switch ($url) {
            case 'o-kompanii':
                $breadCrumbs->push((object)[
                    'name' => $object->title,
                    'url' => $object->url,
                ]);

                return view('pages.about-company', [
                    'object' => $object,
                    'breadcrumbs' => $breadCrumbs,
                    'personal' => $personal,
                    'currencies' => $currencies,
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
                ]);
                break;

            default:

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
