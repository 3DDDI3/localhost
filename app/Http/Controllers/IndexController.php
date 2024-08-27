<?php

namespace App\Http\Controllers;

use App\Models\Lending\Adv;
use App\Models\Lending\Country;
use App\Models\Lending\News;
use App\Models\Lending\Status;
use App\Models\Lending\Tour;
use App\Models\Lending\TourStatus;
use App\Models\Lending\TourTypes;
use Illuminate\Http\Request;
use App\Models\Setting;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Http;

class IndexController extends Controller
{
    public function index(Request $request)
    {
        $setting = Setting::find(1);

        $tourStatuses = TourStatus::query()->where(
            [
                'status_id' => Status::query()->where([
                    'name' => 'Хит',
                    'hide' => 0
                ])->first()->id,
                'hide' => 0
            ]
        )->get();

        $countries = Country::query()
            ->orderBy('name')
            ->get();

        $types = TourTypes::query()
            ->where(['hide' => 0])
            ->orderBy('rating', 'desc')
            ->get();

        $advs = Adv::query()
            ->where(['hide' => 0])
            ->orderBy('rating', 'desc')
            ->get();

        $news = News::query()
            ->where(['hide' => 0])
            ->orderBy('rating', 'desc')
            ->get();

        $client = new Client(['verify' => false]);
        $res = $client->get('https://online.mercury-europe.ru/export/default.php?samo_action=api&version=1.0&oauth_token=5104feaa290d42d7a60d4b8710451fcd&type=json&action=SearchTour_TOWNS');

        $cities = collect();
        foreach (json_decode($res->getBody()->getContents())->SearchTour_TOWNS as $city) {
            $cities->push(
                (object)[
                    'id' => $city->id,
                    'name' => $city->name,
                ]
            );
        }

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

        return view('pages.index', compact(
            'setting',
            'advs',
            'countries',
            'types',
            'tourStatuses',
            'news',
            'cities',
            'currencies',
        ));
    }
}
