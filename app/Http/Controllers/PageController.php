<?php

namespace App\Http\Controllers;

use App\Models\Lending\Page;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function index($url)
    {

        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
        ]);

        $object = Page::query()->where(['url' => $url])->first();

        switch ($url) {
            case 'o-kompanii':
                $breadCrumbs->push((object)[
                    'name' => 'О компании',
                    'url' => $object->title,
                ]);
                return view('pages.about-company', ['object' => $object, 'breadcrumbs' => $breadCrumbs]);
                break;

            default:
                // return view('error.404');
                break;
        }
    }
}
