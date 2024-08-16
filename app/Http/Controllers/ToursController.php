<?php

namespace App\Http\Controllers;

use App\Models\Lending\Infografika;
use App\Models\Lending\Programs;
use App\Models\Lending\Tour;

class ToursController extends Controller
{
    public function index()
    {
        return view('pages.tours');
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
