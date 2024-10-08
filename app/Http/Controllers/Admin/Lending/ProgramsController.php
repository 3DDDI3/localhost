<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Helpers\FileUpload;
use App\Http\Controllers\Controller;
use App\Models\Gallery;
use App\Models\Lending\Programs;
use App\Models\Lending\Tour;
use App\Models\User\AdminEventLogs;
use App\View\Components\blocks\tour as BlocksTour;
use Illuminate\Http\Request;

class ProgramsController extends Controller
{
    public $PATH = 'lending.tours.programs';
    public $TITLE = ['Расписание программ', 'программы дня'];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        if ($request->input("tour_id") != null)
            $objects = Programs::where(['tour_id' => $request->input("tour_id")])->orderBy('rating', 'desc')->orderBy('id', 'desc')->paginate(12);
        else
            $objects = Programs::orderBy('rating', 'desc')->orderBy('id', 'desc')->paginate(12);

        $selectedTour = null;

        if ($request->input("tour_id") > 0)
            $selectedTour = Tour::where(['id' => $request->input("tour_id")])->first()->title;
        else $selectedTour = "Не выбрано";

        $tours = collect();

        foreach (Tour::orderBy('title')->get() as $tour) {
            $tours->push(
                (object)[
                    'id' => $tour->id,
                    'name' => $tour->title
                ]
            );
        }

        $tours->prepend(
            (object)[
                "id" => 0,
                "name" => "Не выбрано",
            ]
        );

        if ($request->input("tour_id") > 0) {
            $objects = Programs::query()->where(['tour_id' => $request->tour_id])->paginate(12);
        } else
            $objects = Programs::query()->orderBy('rating', 'desc')->paginate(12);

        if ($id = $request->delete) {
            $item = Programs::find($id);
            $item->delete();
            AdminEventLogs::log($item, $id);
            return redirect()->back()->with('message', 'Удалено');
        }

        return view('admin.modules.' . $path . '.index', compact('objects', 'path', 'title', 'tours', 'selectedTour'));
    }

    public function edit(Request $request, $id = null)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $object = $id ? Programs::find($id) : new Programs();

        $tours = collect();

        foreach (Tour::orderBy('title')->get() as $tour) {
            $tours->push(
                (object)[
                    'id' => $tour->id,
                    'name' => $tour->title
                ]
            );
        }

        $selectedTour = null;
        $images = null;

        if (!empty($object->tour_id))
            $selectedTour = $object->tour() == null ? null : $object->tour()->first()->title;

        if (!empty($object))
            $images = Gallery::where(['item_id' => $object->id, 'item_type' => 'programs'])->orderBy('rating', 'desc')->get();

        if ($request->isMethod('post')) {
            $object->fill(
                $request->only(
                    [
                        'day',
                        'text',
                        'title',
                    ]
                )
            );

            if ((int)$request->input('tour_id') > 0) $object->fill(['tour_id' => (int)$request->input('tour_id')]);

            $object->save();

            if ($request->file('galary') != null && !empty($object))
                FileUpload::uploadGallery('galary', $object->id, "programs", path: "/images/tours/programs", request: $request);

            AdminEventLogs::log($object, $id);

            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact(
            'object',
            'path',
            'title',
            'tours',
            'selectedTour',
            'images'
        ));
    }
}
