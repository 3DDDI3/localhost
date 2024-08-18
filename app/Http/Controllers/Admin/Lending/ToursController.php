<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Helpers\FileUpload;
use App\Models\Gallery;
use App\Models\Lending\Tour;
use App\Models\Lending\TourCountry;
use App\Models\Service\Country;
use App\Models\User\AdminEventLogs;

class ToursController extends Controller
{
    public $PATH = 'lending.tours';
    public $TITLE = ['Туры', 'тура'];

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

        if (empty($object)) $object = new Tour();

        $countries = TourCountry::all();

        $select_head = !empty($object->id) && $object->country()->count() > 0 ? $object->country()->first()->country()->first()->name : null;

        $images = Gallery::where(['item_id' => 1, 'item_type' => 1])->get();

        if ($request->isMethod('post')) {

            $object->fill(
                $request->only(
                    [
                        '_token',
                        'title',
                        'subtitle',
                        'description',
                        'preview_title',
                        'preview_header',
                        'preview_text',
                        'preview_price',
                        'preview_nights',
                        'tour_cost_info',
                        'tour_additional_cost',
                        'agreement_info',
                    ]
                )
            );

            if (empty($object->url) && !empty($object->title)) $object->url = str_slug($object->title);

            if ($request->file('background_image') != null)
                FileUpload::uploadImage('background_image', Tour::class, 'background_image', $object->id, 377, 377, '/images/tours', request: $request);

            if ($request->file('galary') != null && !empty($object))
                FileUpload::uploadGallery('galary', $object->id, "tour", path: "/images/tours/gallary", request: $request);

            $object->save();

            if ($request->input("select") > 0) {
                $countryTour = TourCountry::where(['tour_id' => $object->id])->first();

                if ($countryTour == null)
                    TourCountry::create(["tour_id" => empty($object->id) ? 1 : $object->id, "country_id" => $request->input("select")]);
                else {
                    $countryTour->country_id = $request->input("select");
                    $countryTour->save();
                }
            }

            AdminEventLogs::log($object, $id);

            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact(
            'object',
            'path',
            'title',
            'countries',
            'select_head',
            'images'
        ));
    }
}
