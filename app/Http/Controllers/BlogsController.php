<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BlogsController extends Controller
{
    public function index()
    {
        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
            (object)[
                'name' => 'Блог',
            ]
        ]);

        return view('pages.blogs', [
            'breadcrumbs' => $breadCrumbs
        ]);
    }

    public function blog()
    {
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

        return view('pages.blog', [
            'breadcrumbs' => $breadCrumbs
        ]);
    }
}
