<?php

namespace App\Http\Controllers;

use App\Helpers\Admin\Helper;
use App\Models\Lending\Slider2;
use App\Models\Lending\Specs;
use Illuminate\Http\Request;
use App\Models\Lending\Texts;
use App\Models\Lending\Slider;
use App\Models\Setting;
use App\Models\Requests;

class IndexController extends Controller
{
    public function index(Request $request)
    {
        $texts = Texts::orderBy('id', 'asc')->get();

        $slider = Slider::orderBy('rating', 'DESC')->orderBy('id', 'DESC')->get();
        $slider2 = Slider2::orderBy('id', 'asc')->get();
        $specs = Specs::where('hide', '!=', 1)->orderBy('rating', 'DESC')->orderBy('id', 'DESC')->get();

        if ($request->isMethod('post'))
            // return (new Requests())->fill($request->except(['_token']))->save();
            (new Requests())->fill($request->except(['_token']))->save();

        $setting = Setting::find(1);

        return view('pages.index', compact('setting', 'texts', 'slider', 'slider2', 'specs'));
    }

}