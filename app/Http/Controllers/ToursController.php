<?php

namespace App\Http\Controllers;

use App\Models\Lending\Infografika;
use App\Models\Lending\Programs;
use App\Models\Lending\Tour;
use App\Models\Lending\TourCountry;
use App\Models\Lending\TourType;

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
            $tours = TourType::query()->where([
                'tour_type_id' => request()->input("type_id")
            ]);
            $breadCrumbs->push((object)[
                'name' => 'Главная',
                'url' => '/',
            ]);
        }

        if (!empty(request()->input("country_id"))) {
            $tours = TourCountry::query()->where([
                'country_id' => request()->input("country_id")
            ]);
        }

        dd($tours->get()[0]->tourType()->get());


        $tours = Tour::query()->orderBy('rating', 'desc')->paginate(1);

        return view('pages.tours', [
            "tours" => $tours,
            'breadcrumbs' => $breadCrumbs,
        ]);
    }

    public function tour($url)
    {
        $tour = Tour::where(["hide" => 0, 'url' => $url])->first();



        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
            (object)[
                'name' => 'Страны',
                'url' => '/tours'
            ],
            (object)[
                'name' => 'Индия',
                'url' => '/tours'
            ],
            (object)[
                'name' => 'Экскурсионный тур: «Золотой треугольник»',
            ],
        ]);

        if (!empty($tour))
            return view('pages.tour', [
                "breadcrumbs" => $breadCrumbs,
                "tour" => $tour,
            ]);
        else return view('errors.404');
    }
}
