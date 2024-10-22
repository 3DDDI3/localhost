<?php

namespace App\Http\Controllers;

use App\Models\Lending\Country;
use App\Models\Lending\Status;
use App\Models\Lending\Tour;
use App\Models\Lending\TourCountry;
use App\Models\Lending\TourType;
use App\Models\Lending\TourTypes;
use App\Models\Services\SamotourTour;
use Carbon\Carbon;
use GuzzleHttp\Client;

class ToursController extends Controller
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

        $tourTypes = new TourTypes();
        $tourCountries = new Country();
        $tours = new Tour();

        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
        ]);

        $status = null;

        /**
         * Отбор туров по статусу "Ранее бронировани(иконка часов)"
         */
        if (!empty(request()->input("earlier_booking"))) {
            $tours = Tour::query()
                ->whereHas('tourStatus', function ($query) {
                    $query->where(['status.id' => 6]);
                    $query->where(function ($query) {
                        $query->where('deadline_date', '>=', Carbon::parse(now())->format('Y-m-d H:i:s'));
                        $query->orWhere(['deadline_date' => null]);
                    });
                })
                ->orderBy('created_at', 'desc')
                ->paginate(12);

            $breadCrumbs->push((object)[
                "name" => "Ранее бронирование",
            ]);
        }

        /**
         * Отбор туров по статусу "Спецпреложение(иконка огонька)"
         */
        if (!empty(request()->input("special_offers"))) {
            $tours = Tour::query()
                ->has('tourStatus')->whereHas('tourStatus', function ($query) {
                    $query->where(['status.id' => 5]);
                    $query->where(function ($query) {
                        $query->where('deadline_date', '>=', Carbon::parse(now())->format('Y-m-d H:i:s'));
                        $query->orWhere(['deadline_date' => null]);
                    });
                })
                ->orderBy('created_at', 'desc')
                ->paginate(12);

            $breadCrumbs->push((object)[
                "name" => "Спецпредложение",
            ]);
        }

        /**
         * Отбор туров по типу
         */
        if (!empty(request()->input("type_id"))) {
            if (request()->input("type_id") == "*") {
                $breadCrumbs->push((object)[
                    'name' => "Туры по типу отдыха",
                    'url' => '/tours?type_id=*',
                ]);

                $tours = TourType::has('tour')
                    ->paginate(12);
            } else {
                $tourType = TourType::query()
                    ->where([
                        'tour_type_id' => request()->input("type_id"),
                        // 'hide' => 0
                    ])->first();

                if (!$tourType) abort(404, 'Что-то пошло не так.');

                $breadCrumbs->push((object)[
                    'name' => "Туры по типу отдыха",
                    'url' => '/tours?type_id=*',
                ]);

                $breadCrumbs->push((object)[
                    'name' => $tourType->tourType->type,
                    'url' => "/" . $tourType->tourType->id,
                ]);

                $tours = TourType::query()
                    ->whereHas('tour', function ($query) {
                        $query->where(
                            ['tour_type_id' => request()->type_id, 'tours.hide' => 0]
                        );
                        $query->where(function ($query) {
                            $query->where('deadline_date', '>=', Carbon::parse(now())->format('Y-m-d H:i:s'));
                            $query->orWhere(['deadline_date' => null]);
                        });
                    })
                    ->paginate(12);

                $status = TourTypes::query()
                    ->where(['id' => request()->type_id])
                    ->first();
            }
        }

        /**
         * Отбор туров по стране
         */
        if (!empty(request()->input("country_id"))) {
            if (request()->input("country_id") == "*") {
                $breadCrumbs->push((object)[
                    'name' => "Туры по стране",
                    'url' => '/tours?country_id=*',
                ]);

                $tours = TourCountry::has('tour')
                    ->paginate(12);
            } else {
                $country = Country::query()
                    ->where([
                        'id' => request()->input('country_id'),
                        'hide' => 0
                    ])
                    ->first();

                if (!$country) abort(404, 'Что-то пошло нет.',);

                $breadCrumbs->push((object)[
                    'name' => "Туры по странам",
                    'url' => '/tours?country_id=*',
                ]);

                $breadCrumbs->push((object)[
                    'name' => "Туры в " . $country->name,
                    'url' => '/tours?country_id=' . $country->id,
                ]);

                $tours = TourCountry::query()
                    ->whereHas('tour', function ($query) {
                        $query->where(
                            ['tour_country.country_id' => request()->country_id, 'tours.hide' => 0]
                        );
                        $query->where(function ($query) {
                            $query->where('deadline_date', '>=', Carbon::parse(now())->format('Y-m-d H:i:s'));
                            $query->orWhere(['deadline_date' => null]);
                        });
                    })
                    ->paginate(12);

                $status = Country::query()
                    ->where(['id' => request()->country_id])
                    ->first();
            }
        }

        if (empty(request()->input("type_id")) && empty(request()->input('country_id')) && empty(request()->special_offers) && empty(request()->earlier_booking)) {

            $breadCrumbs->push((object)[
                'name' => "Туры",
            ]);

            $tours = Tour::query()
                ->where(['hide' => 0])
                ->where(function ($query) {
                    $query->where('deadline_date', '>=', Carbon::parse(now())->format('Y-m-d H:i:s'))
                        ->orWhere('deadline_date', '=', null);
                })
                ->orderBy('rating', 'desc')
                ->paginate(12);
        }

        return view('pages.tours', [
            "tourTypes" => $tourTypes,
            "tours" => $tours,
            "tourCountries" => $tourCountries,
            'breadcrumbs' => $breadCrumbs,
            'currencies' => $currencies,
            'status' => $status,
        ]);
    }

    public function tour($url)
    {
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

        $tour = Tour::query()
            ->where([
                "hide" => 0,
                'url' => $url,
            ])
            ->where(function ($query) {
                $query->where('deadline_date', '>=', Carbon::parse(now())->format('Y-m-d H:i:s'))
                    ->orWhere('deadline_date', '=', null);
            })
            ->first();

        if (!$tour) abort(404, 'Что-то пошло не так.');

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
                    'name' => $tour->country->name,
                    'url' => "/tours?country_id=" . $tour->country->id
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

        $samotourTour = $tour->samotourTour;

        $city = collect();

        try {
            $client = new Client(['verify' => false]);
            $res = $client->get("$this->samotour_url&oauth_token=$this->samotour_token&type=json&action=SearchTour_TOWNFROMS");

            foreach (json_decode($res->getBody()->getContents())->SearchTour_TOWNFROMS as $_city) {
                if ($_city->id == $samotourTour->id_city)
                    $city->push($_city);
            }
        } catch (\Throwable $th) {
        }

        $hotels = collect();
        $stars = collect();

        try {
            $client = new Client(['verify' => false]);
            $res = $client->get("$this->samotour_url&oauth_token=$this->samotour_token&type=json&action=SearchTour_HOTELS&TOWNFROMINC=$samotourTour->id_city&STATEINC=$samotourTour->id_country&TOURS=$samotourTour->id_tour");

            foreach (json_decode($res->getBody()->getContents())->SearchTour_HOTELS as $_hotel) {
                $hotels->push((object)[
                    'id' => $_hotel->id,
                    'name' => $_hotel->name,
                    'star_id' => $_hotel->starGroupList,
                ]);
                if (!$stars->contains('name', $_hotel->star))
                    $stars->push((object)[
                        'id' => $_hotel->starGroupList,
                        'name' => $_hotel->star,
                    ]);
            }
        } catch (\Throwable $th) {
        }

        $stars = $stars->sortDesc();

        $nights = collect();

        try {
            $client = new Client(['verify' => false]);
            $res = $client->get("$this->samotour_url&oauth_token=$this->samotour_token&type=json&action=SearchTour_NIGHTS&TOWNFROMINC=$samotourTour->id_city&STATEINC=$samotourTour->id_country");

            foreach (json_decode($res->getBody()->getContents())->SearchTour_NIGHTS->nights as $_night) {
                $nights->push($_night);
            }
        } catch (\Throwable $th) {
        }

        $meals = collect();

        try {
            $client = new Client(['verify' => false]);
            $res = $client->get("$this->samotour_url&oauth_token=$this->samotour_token&type=json&action=SearchTour_MEALS&TOWNFROMINC=$samotourTour->id_city&STATEINC=$samotourTour->id_country");


            foreach (json_decode($res->getBody()->getContents())->SearchTour_MEALS as $_meal) {
                $meals->push((object)[
                    'id' => $_meal->id,
                    'name' => $_meal->name
                ]);
            }
        } catch (\Throwable $th) {
        }

        if (!empty($tour))
            return view('pages.tour', [
                "breadcrumbs" => $breadCrumbs,
                "tour" => $tour,
                'currencies' => $currencies,
                'meals' => $meals,
                'hotels' => $hotels,
                'city' => $city,
                'stars' => $stars,
                'samotour' => $samotourTour,
                'nights' => $nights,
            ]);
        else abort(404, 'Что-то пошло не так.');
    }
}
