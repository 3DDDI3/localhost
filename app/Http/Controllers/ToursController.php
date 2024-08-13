<?php

namespace App\Http\Controllers;

use App\Models\Lending\Tour;
use Illuminate\Http\Request;

class ToursController extends Controller
{
    public function index()
    {
        return view('pages.tours');
    }

    public function tour($id)
    {
        $tour = Tour::find($id);

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
