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

    public function tour($id)
    {
        $tour = Tour::where(["hide" => 0, 'id' => $id])->first();

        dd($tour->sortedProgramsByDesc());

        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
            (object)[
                'name' => 'Блог',
                'url' => '/blogs'
            ],
            (object)[
                'name' => 'Какие города стоит посетить в Индии',
            ],
        ]);

        return view('pages.tour', [
            "breadcrumbs" => $breadCrumbs,
            "tour" => $tour,
        ]);
    }
}
