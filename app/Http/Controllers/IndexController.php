<?php

namespace App\Http\Controllers;

use App\Models\Lending\Adv;
use App\Models\Lending\Country;
use App\Models\Lending\Tour;
use App\Models\Lending\TourTypes;
use Illuminate\Http\Request;
use App\Models\Setting;

class IndexController extends Controller
{
    public function index(Request $request)
    {
        $setting = Setting::find(1);

        $tours = Tour::query()->where(['hide' => 0])->orderBy('rating', 'desc')->get();

        $countries = Country::query()->orderBy('name')->get();

        $types = TourTypes::query()->where(['hide' => 0])->orderBy('rating', 'desc')->get();

        $advs = Adv::query()->where(['hide' => 0])->orderBy('rating', 'desc')->get();

        return view('pages.index', compact(
            'setting',
            'advs',
            'countries',
            'types',
        ));
    }
}
