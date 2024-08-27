<?php

namespace App\Http\Controllers;

use App\Models\Lending\Country;
use App\Models\Lending\Tour;
use App\Models\Lending\TourCountry;
use App\Models\Lending\TourType;
use GuzzleHttp\Client;

class ToursController extends Controller
{
    public function index()
    {
        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
        ]);

        if (!empty(request()->input("type_id"))) {
            if (request()->input("type_id") == "*") {
                $breadCrumbs->push((object)[
                    'name' => "Туры по типу отдыха",
                    'url' => '/tours?type_id=*',
                ]);

                $tours = TourType::query()->whereNotNull(
                    'tour_type_id'
                )->paginate(12);
            } else {
                $tourType = TourType::query()->where([
                    'tour_type_id' => request()->input("type_id")
                ])->first();

                $breadCrumbs->push((object)[
                    'name' => "Туры по типу отдыха",
                    'url' => '/tours?type_id=*',
                ]);

                $breadCrumbs->push((object)[
                    'name' => $tourType->tourType->type,
                    'url' => "/" . $tourType->tourType->id,
                ]);

                $tours = TourType::query()->where([
                    'tour_type_id' => request()->input("type_id")
                ])->paginate(12);
            }
        }

        if (!empty(request()->input("country_id"))) {
            if (request()->input("country_id") == "*") {
                $breadCrumbs->push((object)[
                    'name' => "Страны",
                    'url' => '/tours?country_id=*',
                ]);

                $tours = TourCountry::query()->whereNotNull('country_id')->paginate(12);
            } else {

                $country = Country::query()->where(['id' => request()->input('country_id')])->first();

                $breadCrumbs->push((object)[
                    'name' => "Страны",
                    'url' => '/tours?country_id=*',
                ]);

                $breadCrumbs->push((object)[
                    'name' => "Туры в " . $country->name,
                    'url' => '/tours?country_id=' . $country->id,
                ]);

                $tours = TourCountry::query()->where([
                    'country_id' => request()->input("country_id")
                ])->paginate(12);
            }
        }

        if (empty(request()->input("type_id")) && empty(request()->input('country_id'))) {

            $breadCrumbs->push((object)[
                'name' => "Туры",
            ]);

            $tours = Tour::query()->where(['hide' => 0])->orderBy('rating', 'desc')->paginate(12);
        }

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

        return view('pages.tours', [
            "tours" => $tours,
            'breadcrumbs' => $breadCrumbs,
            'currencies' => $currencies,
        ]);
    }

    public function tour($url)
    {
        $tour = Tour::where(["hide" => 0, 'url' => $url])->first();

        if ($tour->tourType()->count() > 0) {
            $breadCrumbs = collect([
                (object)[
                    'name' => 'Главная',
                    'url' => '/',
                ],
                (object)[
                    'name' => 'Туры по типу',
                    'url' => '/tours?type_id=*'
                ],
                (object)[
                    'name' => 'Индия',
                    'url' => '/tours'
                ],
                (object)[
                    'name' => $tour->title,
                ],
            ]);
        }

        if ($tour->country()->count() > 0) {

            $breadCrumbs = collect([
                (object)[
                    'name' => 'Главная',
                    'url' => '/',
                ],
                (object)[
                    'name' => 'Страны',
                    'url' => '/tours?country_id=*'
                ],
                (object)[
                    'name' => $tour->country->country->name,
                    'url' => "/tours?country_id=" . $tour->country->country->id
                ],
                (object)[
                    'name' => $tour->title,
                ],
            ]);
        }

        if ($tour->country()->count() > 0 && $tour->tourType()->count() > 0) {
            $breadCrumbs = collect([
                (object)[
                    'name' => 'Главная',
                    'url' => '/',
                ],
                (object)[
                    'name' => 'Туры',
                    'url' => '/tours'
                ],
                (object)[
                    'name' => $tour->title,
                ],
            ]);
        }

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

        if (!empty($tour))
            return view('pages.tour', [
                "breadcrumbs" => $breadCrumbs,
                "tour" => $tour,
                'currencies' => $currencies,
            ]);
        else return view('errors.404');
    }
}
