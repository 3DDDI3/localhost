<?php

namespace App\Http\Controllers\PersonalAcount;

use App\Http\Controllers\Controller;
use App\Models\Services\Agent;
use App\Models\User\User;
use GuzzleHttp\Client;
use Illuminate\Http\Request;

class PersonalAcountController extends Controller
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
        $agent = Agent::query()
            ->where([
                'url' => $url,
            ])->first();

        $currencies = collect();

        try {
            $client = new Client(['verify' => false]);
            $res = $client->get("$this->samotour_url&oauth_token=$this->samotour_token&type=json&action=SearchTour_TOWNS");

            $cities = collect();
            foreach (json_decode($res->getBody()->getContents())->SearchTour_TOWNS as $city) {
                $cities->push(
                    (object)[
                        'id' => $city->id,
                        'name' => $city->name,
                    ]
                );
            }

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

        $breadcrumbs = collect(
            [
                (object)[
                    'name' => "Главная",
                    'url' => '/',
                ],
                (object)[
                    'name' => "Личный кабинет",
                ]
            ]
        );

        return view('personal_acount.index', [
            'currencies' => $currencies,
            'agent' => $agent,
            'breadcrumbs' => $breadcrumbs,
        ]);
    }

    public function resetPassword(Request $request)
    {
        $currencies = collect();

        try {
            $client = new Client(['verify' => false]);
            $res = $client->get("$this->samotour_url&oauth_token=$this->samotour_token&type=json&action=SearchTour_TOWNS");

            $cities = collect();
            foreach (json_decode($res->getBody()->getContents())->SearchTour_TOWNS as $city) {
                $cities->push(
                    (object)[
                        'id' => $city->id,
                        'name' => $city->name,
                    ]
                );
            }

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

        $breadcrumbs = collect(
            [
                (object)[
                    'name' => "Главная",
                    'url' => '/',
                ],
                (object)[
                    'name' => "Личный кабинет",
                ]
            ]
        );

        return view('personal_acount.index', [
            'currencies' => $currencies,
            'agent' => null,
            'breadcrumbs' => $breadcrumbs,
        ]);
    }
}
