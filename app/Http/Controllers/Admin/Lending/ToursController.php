<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Helpers\FileUpload;
use App\Models\Lending\Tour;
use App\Models\Lending\TourCountry;
use App\Models\Service\Country;
use App\Models\User\AdminEventLogs;
use stdClass;

class ToursController extends Controller
{
    public $PATH = 'lending.tours';
    public $TITLE = ['Характеристики', 'характеристики'];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $objects = Tour::orderBy('rating', 'desc')->orderBy('id', 'desc');

        if ($request->search) {
            $objects = $objects->where('name', 'LIKE', '%' . str_replace(' ', '%', $request->search) . '%');
        }

        if ($id = $request->delete) {
            $item = Tour::find($id);
            $item->delete();
            AdminEventLogs::log($item, $id);
            return redirect()->back()->with('message', 'Удалено');
        }

        $objects = $objects->get();

        return view('admin.modules.' . $path . '.index', compact('objects', 'path', 'title'));
    }

    public function edit(Request $request, $id = null)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $object = $id ? Tour::find($id) : new Tour();

        $countries = Country::all();

        $select_head = $object->country()->first()->country()->first()->name;

        if ($request->isMethod('post')) {
            $object->fill(
                $request->only(
                    [
                        '_token',
                        'title',
                        'preview_text',
                        'text'
                    ]
                )
            );

            if ($request->input("select") != null) {
                $countryTour = $object->country()->first();

                if ($countryTour == null)
                    TourCountry::create(["tour_id" => $object->id, "country_id" => $request->input("select")]);
                else
                    $countryTour->tour_id = $request->input("select");

                // $countryTour->save();
            }

            dd($countries);

            $object->save();
            // FileUpload::uploadImage('image', $this->MODEL, 'image', $object->id, 377, 377, '/images/specs', false, $request);
            AdminEventLogs::log($object, $id);
            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact('object', 'path', 'title', 'countries', 'select_head'));
    }
}
