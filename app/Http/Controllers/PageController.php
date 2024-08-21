<?php

namespace App\Http\Controllers;

use App\Models\Lending\Page;
use App\Models\Lending\Personal;
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

        $personal = Personal::query()->orderBy('rating', 'desc')->get();

        $object = Page::query()->where(['url' => $url])->first();  

        switch ($url) {
            case 'o-kompanii':
                $breadCrumbs->push((object)[
                    'name' => $object->title,
                    'url' => $object->url,
                ]);

                return view('pages.about-company', [
                    'object' => $object,
                    'breadcrumbs' => $breadCrumbs,
                    'personal' => $personal,
                ]);
                break;
            case 'turistam':
                $breadCrumbs->push((object)[
                    'name' => $object->title,
                    'url' => $object->url,
                ]);

                return view('pages.tourist', [
                    'object' => $object,
                    'breadcrumbs' => $breadCrumbs,
                ]);
                break;

            case 'agentstvam':
                $breadCrumbs->push((object)[
                    'name' => $object->title,
                    'url' => $object->url,
                ]);

                return view('pages.agency', [
                    'object' => $object,
                    'breadcrumbs' => $breadCrumbs,
                ]);
                break;

            case 'kontakty':
                $breadCrumbs->push((object)[
                    'name' => $object->title,
                    'url' => $object->url,
                ]);

                return view('pages.contacts', [
                    'object' => $object,
                    'breadcrumbs' => $breadCrumbs,
                ]);
                break;



            default:
                // return view('error.404');
                break;
        }
    }
}
