<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Http\Controllers\Controller;
use App\Models\Lending\Infografika;
use Illuminate\Http\Request;

class InfografikaController extends Controller
{
    public $PATH = 'lending.tours';
    public $TITLE = ['Характеристики', 'характеристики'];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $objects = Infografika::orderBy('rating', 'desc')->orderBy('id', 'desc');

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

        $images = Gallery::where(['item_id' => 1, 'item_type' => 1])->get();

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

            if ($request->input("select") != null && (int)$request->input("select") > 0) {
                $countryTour = $object->country()->first();

                if ($countryTour == null)
                    TourCountry::create(["tour_id" => $object->id, "country_id" => $request->input("select")]);
                else
                    $countryTour->tour_id = $request->input("select");

                $countryTour->save();
            }

            if ($request->file('galary') != null)
                FileUpload::uploadGallery('galary', 1, 1, path: "/upload/tours", request: $request);

            if ($request->file('path') != null)
                FileUpload::uploadImage('path', Tour::class, 'path', $object->id, 377, 377, '/images/tours', request: $request);

            $object->save();

            AdminEventLogs::log($object, $id);

            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact('object', 'path', 'title', 'countries', 'select_head', 'images'));
    }
}
