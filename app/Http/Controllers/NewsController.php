<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
            (object)[
                'name' => 'Новости',
                'url' => 'news'
            ]
        ]);

        return view('pages.news', [
            'breadcrumbs' => $breadCrumbs,
        ]);
    }

    public function new($id)
    {
        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
            (object)[
                'name' => 'Новости',
                'url' => '/news'
            ],
            (object)[
                'name' => 'Авиакомпания Utair повезет туристов в Анталью и Сочи',
            ]
        ]);

        return view('pages.new', [
            'breadcrumbs' => $breadCrumbs,
        ]);
    }
}
