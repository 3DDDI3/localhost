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
use App\Models\Services\SamotourTour;
use App\Models\User\AdminEventLogs;
use GuzzleHttp\Client;
use Symfony\Component\Console\Input\Input;

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
            $objects = $objects->where('title', 'LIKE', '%' . str_replace(' ', '%', $request->search) . '%');
        }

        if ($id = $request->delete) {
            $item = Tour::find($id);
            $item->delete();
            AdminEventLogs::log($item, $id);
            return redirect()->back()->with('message', 'Удалено');
        }

        $objects = $objects->paginate(10);

        return view('admin.modules.' . $path . '.index', compact('objects', 'path', 'title'));
    }

    public function edit(Request $request, $id = null)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $object = $id ? Tour::find($id) : new Tour();

        if (empty($object)) $object = new Tour();

        $countries = Country::query()
            ->orderBy('rating', 'desc')
            ->get()
            ->prepend(
                (new Country())->fill([
                    "id" => 0,
                    "name" => "Не выбрано",
                ])
            );

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

        $countryHead = $object->country != null ? $object->country->name : null;

        $images = Gallery::where(['item_id' => 1, 'item_type' => 1])->get();

        $statuses = collect();

        foreach (Status::all() as $status) {
            $statuses->push((object)[
                "id" => $status->id,
                "name" => $status->name,
            ]);
        }

        $selectedStatus = collect();

        if ($object->tourStatus()->count() > 0)
            foreach ($object->tourStatus()->get() as $tourType) {
                $selectedStatus->push($tourType->id);
            }

        $samotour = SamotourTour::query()
            ->orderBy("name")
            ->get()
            ->prepend(
                (new SamotourTour())->fill([
                    "id" => 0,
                    "name" => "Не выбрано"
                ])
            );

        $samotourHead = $object->samotourTour != null ? $object->samotourTour->name : null;

        if ($request->isMethod('post')) {

            $object->fill([
                'isHiddenCountryInfo' => 0,
                'isHiddenTouristInfo' => 0,
                'isHiddenTourCost' => 0,
            ]);

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
                        'isHiddenCountryInfo',
                        'isHiddenTouristInfo',
                        'isHiddenTourCost',
                    ]
                )
            );

            $object->url = str_slug($object->title);

            if ($request->file('background_image') != null)
                FileUpload::uploadImage('background_image', Tour::class, 'background_image', $object->id, 377, 377, '/images/tours', request: $request);

            if ($request->file('preview_image') != null)
                FileUpload::uploadImage('preview_image', Tour::class, 'preview_image', $object->id, 377, 377, '/images/tours', request: $request);

            if ($request->file('galary') != null && !empty($object))
                FileUpload::uploadGallery('galary', $object->id, "tour", path: "/images/tours/gallary", request: $request);

            if ($request->file('file1') != null)
                FileUpload::uploadFile('file1', $object, 'path1', $object->id, '/storage/files');

            if ($request->file('file2') != null)
                FileUpload::uploadFile('file2', $object, 'path2', $object->id, '/storage/files');

            if ((int)$request->input("samotour") > 0) {
                $object->samotour_tour_id = $request->input("samotour");
            } else $object->samotour_tour_id = null;

            $object->save();

            if ((int)$request->input("select") > 0)
                TourCountry::query()
                    ->where(['tour_id' => $object->id])
                    ->first()
                    ->fill([
                        'country_id' => $request->select,
                    ])
                    ->save();
            else {
                $tourCountry = TourCountry::query()
                    ->where(['tour_id' => $object->id])
                    ->first();
                if (!$tourCountry) $tourCountry = new TourCountry();

                $tourCountry->fill([
                    'country_id' => null,
                ])->save();
            }

            if (!empty($request->statuses)) {
                TourStatus::query()
                    ->where(['tour_id' => $object->id])
                    ->delete();
                    
                foreach ($request->statuses as $status) {
                    TourStatus::create([
                        'status_id' => $status,
                        'tour_id' => $object->id
                    ]);
                }
            }

            if (!empty($request->tour_types)) {
                TourType::query()
                    ->where([
                        'tour_id' => $object->id,
                    ])
                    ->delete();
                foreach ($request->tour_types as $tourType) {
                    TourType::create([
                        'tour_id' => $object->id,
                        'tour_type_id' => $tourType
                    ]);
                }
            } else
                TourType::query()
                    ->where([
                        'tour_id' => $object->id,
                    ])
                    ->delete();

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
            'statuses',
            'selectedStatus',
            'countryHead',
            'samotour',
            'samotourHead',
        ));
    }
}
