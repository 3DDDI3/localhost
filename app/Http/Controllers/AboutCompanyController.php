<?php

namespace App\Http\Controllers;

use App\Helpers\Admin\Helper;
use Illuminate\Http\Request;

class AboutCompanyController extends Controller
{
    public function index()
    {
        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
            (object)[
                'name' => 'О компании',
                'url' => 'about-company'
            ]
        ]);

        return view('pages.about-company', [
            'breadcrumbs' => $breadCrumbs
        ]);
    }
}
