<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Helpers\FileUpload;
use App\Models\Gallery;
use App\Models\Lending\Country;
use App\Models\Lending\Status;
use App\Models\Lending\Tour;
use App\Models\Lending\TourCountry;
use App\Models\Lending\TourStatus;
use App\Models\Lending\TourType;
use App\Models\Lending\TourTypes;
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

        $countries = Country::all();

        $tourTypes = collect();

        foreach (TourTypes::orderBy('type')->get() as $tourType) {
            $tourTypes->push((object)[
                "id" => $tourType->id,
                "name" => $tourType->type,
            ]);
        }

        $selectedTourTypes = collect();

        if ($object->tourType()->count() > 0)
            foreach ($object->tourType()->get() as $tourType) {
                if ($tourType->tourType()->count() == 0) continue;
                $selectedTourTypes->push($tourType->tourType()->first()->id);
            }

        $countryHead = !empty($object->id) && $object->country()->count() > 0 ? $object->country()->first()->country()->first()->name : null;

        $images = Gallery::where(['item_id' => 1, 'item_type' => 1])->get();

        $status = Status::query()->orderBy('rating', 'desc')->get();

        $statusHead = null;

        if (!empty($object->tourStatus()->first()))
            $statusHead = $object->tourStatus()->status()->name;

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

            if ($request->input('status') > 0) {
                TourStatus::query()->where(['tour_id' => $object->id])->delete();
                $status = TourStatus::create([
                    'status_id' => $request->input('status'),
                    'tour_id' => $object->id,
                ]);
            }

            if (!empty($request->input('tour_types'))) {
                TourType::where(['tour_id' => $object->id])->delete();
                foreach ($request->input('tour_types')  as $typeId) {
                    TourType::create(['tour_type_id' => (int)$typeId, "tour_id" => $object->id]);
                }
            } else TourType::where(['tour_id' => $object->id])->delete();

            AdminEventLogs::log($object, $id);

            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact(
            'object',
            'path',
            'title',
            'countries',
            'images',
            'tourTypes',
            'selectedTourTypes',
            'status',
            'statusHead',
            'countryHead',
        ));
    }
}
