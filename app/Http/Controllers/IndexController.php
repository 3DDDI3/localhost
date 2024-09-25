<?php

namespace App\Http\Controllers;

use App\Models\Lending\Adv;
use App\Models\Lending\Country;
use App\Models\Lending\News;
use App\Models\Lending\Slider;
use App\Models\Lending\Status;
use App\Models\Lending\Tour;
use App\Models\Lending\TourStatus;
use App\Models\Lending\TourTypes;
use App\Models\Services\SamotourTour;
use Illuminate\Http\Request;
use App\Models\Setting;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\DB;

class IndexController extends Controller
{
    private $samotour_url;
    private $samotour_token;

    public function __construct()
    {
        $this->samotour_url = config('samotour.samotour_api_url');
        $this->samotour_token = config('samotour.samotour_api_token');
    }

    public function index(Request $request)
    {
        $setting = Setting::find(1);

        $tourStatuses = Tour::has('tourStatus')->get();

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

        $currencies = collect();

        $cities =  DB::table('samotour_tours')
            ->select('city', 'id_city')
            ->distinct()
            ->orderBy('city')
            ->get();

        $counties = DB::table('samotour_tours')
            ->select('country', 'id_country')
            ->distinct()
            ->orderBy('country')
            ->get();

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

        $sliders = Slider::query()
            ->where(['hide' => 0])
            ->orderBy('rating', 'desc')
            ->get();

        return view('pages.index', compact(
            'setting',
            'advs',
            'countries',
            'types',
            'tourStatuses',
            'news',
            'cities',
            'countries',
            'currencies',
            'sliders'
        ));
    }
}
