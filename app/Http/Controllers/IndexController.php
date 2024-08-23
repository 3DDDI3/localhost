<?php

namespace App\Http\Controllers;

use App\Models\Lending\Adv;
use App\Models\Lending\Country;
use App\Models\Lending\News;
use App\Models\Lending\Status;
use App\Models\Lending\Tour;
use App\Models\Lending\TourStatus;
use App\Models\Lending\TourTypes;
use Illuminate\Http\Request;
use App\Models\Setting;

class IndexController extends Controller
{
    public function index(Request $request)
    {
        $setting = Setting::find(1);

        $tourStatuses = TourStatus::query()->where(
            [
                'status_id' => Status::query()->where([
                    'name' => 'Хит',
                    'hide' => 0
                ])->first()->id,
                'hide' => 0
            ]
        )->get();

        $countries = Country::query()
            ->orderBy('name')
            ->get();

        $types = TourTypes::query()
            ->where(['hide' => 0])
            ->orderBy('rating', 'desc')
            ->get();

        $advs = Adv::query()
            ->where(['hide' => 0])
            ->orderBy('rating', 'desc')
            ->get();

        $news = News::query()
            ->where(['hide' => 0])
            ->orderBy('rating', 'desc')
            ->get();

        return view('pages.index', compact(
            'setting',
            'advs',
            'countries',
            'types',
            'tourStatuses',
            'news',
        ));
    }
}
