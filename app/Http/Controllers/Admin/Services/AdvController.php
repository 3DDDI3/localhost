<?php

namespace App\Http\Controllers\Admin\Services;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AdvController extends Controller
{
    public $PATH = 'services.infografika';
    public $TITLE = ['Инфографики', 'инфографики'];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $selectedPage = null;
        $selectedTour = null;

        if ($request->input("tour_id") != null)
            $objects = Infografika::where(['tour_id' => $request->input("tour_id")])->orderBy('rating', 'desc')->orderBy('id', 'desc')->get();
        else
            $objects = Infografika::orderBy('rating', 'desc')->orderBy('id', 'desc')->get();

        if ($request->input("page_id") != null) {
            $objects = Infografika::where(['about_id' => $request->input("page_id")])->orderBy('rating', 'desc')->orderBy('id', 'desc')->get();
            $selectedPage = Page::where('id', 1)->first()->title;
        } else
            $objects = Infografika::orderBy('rating', 'desc')->orderBy('id', 'desc')->get();

        if (!empty($objects->tour_id))
            $selectedTour = $objects->first()->tour()->title;
        else {
            $selectedTour = Tour::where(['id' => $request->input("tour_id")])->first()?->title;
        }

        $tours = collect();

        foreach (Tour::orderBy('title')->get() as $tour) {
            $tours->push(
                (object)[
                    'id' => $tour->id,
                    'name' => $tour->title
                ]
            );
        }

        $pages = collect(
            [
                (object)[
                    'id' => (int)Page::where('id', 1)->first()->id,
                    'name' => Page::where('id', 1)->first()->title
                ]
            ]
        );

        foreach (Page::orderBy('title')->get() as $page) {
            $tours->push(
                (object)[
                    'id' => $page->id,
                    'name' => $page->title
                ]
            );
        }

        if ($request->search) {
            $objects = $objects->where('name', 'LIKE', '%' . str_replace(' ', '%', $request->search) . '%');
        }

        if ($id = $request->delete) {
            $item = Infografika::find($id);
            $item->delete();
            AdminEventLogs::log($item, $id);
            return redirect()->back()->with('message', 'Удалено');
        }

        return view('admin.modules.' . $path . '.index', compact(
            'objects',
            'path',
            'title',
            'tours',
            'selectedTour',
            'pages',
            'selectedPage'
        ));
    }

    public function edit(Request $request, $id = null)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $object = $id ? Infografika::find($id) : new Infografika();

        $tours = collect();

        $pages = collect(
            [
                (object)[
                    'id' => (int)Page::where('id', 1)->first()->id,
                    'name' => Page::where('id', 1)->first()->title
                ]
            ]
        );

        $selectedTour = null;
        $selectedPage = null;

        foreach (Tour::orderBy('title')->get() as $tour) {
            $tours->push(
                (object)[
                    'id' => $tour->id,
                    'name' => $tour->title
                ]
            );
        }

        foreach ($object->page()->get() as $page) {
            $selectedPage = $page->id;
        }

        if (!empty($object->tour_id))
            $selectedTour = $object->tour()->count() == 0 ? null : $object->tour()->first()->title;

        if ($request->isMethod('post')) {
            $object->fill(
                $request->only(
                    [
                        'title',
                        'text',
                        'subtitle',
                        'about_id',
                        'tour_id'
                    ]
                )
            );

            if ($request->input('attached_pages') == 0 && $request->input('tour_id') == 0)
                $object->fill(['tour_id' => null, 'about_id' => null]);
            else {
                if (!empty($request->input('attached_pages')))
                    $object->fill(['about_id' => $request->input('attached_pages'), 'tour_id' => null]);
                else {
                    $object->fill(['tour_id' => $request->input('tour_id'), 'about_id' => null]);
                }
            }

            if ($request->input('page_id') > 0 && empty($request->input('attached_pages'))) $object->fill(['about_id' => $request->input('page_id')]);
            else {
                $object->fill(['about_page' => $request->input('attached_pages')]);
                $object->fill(['tourd_id' => null]);
            }
            if ($request->input('tour_id') > 0) $object->fill(['tour_id' => $request->input('tour_id')]);

            $object->save();

            if ($request->file('icon') != null)
                FileUpload::uploadImage('icon', Infografika::class, 'icon', $object->id, 377, 377, '/images/tours/statistic_icons/', request: $request);

            AdminEventLogs::log($object, $id);

            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact(
            'object',
            'path',
            'title',
            'tours',
            'selectedTour',
            'pages',
            'selectedPage'
        ));
    }
}