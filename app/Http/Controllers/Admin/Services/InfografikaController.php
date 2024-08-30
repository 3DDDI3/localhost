<?php

namespace App\Http\Controllers\Admin\Services;

use App\Helpers\FileUpload;
use App\Http\Controllers\Controller;
use App\Models\Lending\Page;
use App\Models\Lending\Tour;
use App\Models\Services\Infografika;
use App\Models\User\AdminEventLogs;
use Illuminate\Http\Request;
use Symfony\Component\Console\Input\Input;

class InfografikaController extends Controller
{
    public $PATH = 'services.infografika';
    public $TITLE = ['Инфографики', 'инфографики'];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $objects = Infografika::query()->orderBy('rating', 'desc')->paginate(10);

        $tours = collect(
            [(object)[
                'id' => 0,
                'name' => 'Не выбрано',
            ]]
        );

        foreach (Tour::orderBy('title')->get() as $tour) {
            $tours->push(
                (object)[
                    'id' => $tour->id,
                    'name' => $tour->title
                ]
            );
        }

        $selectedPage = null;
        $selectedTour = null;

        if ((int)$request->tour_id > 0) {
            $selectedTour = Tour::query()
                ->where(['id' => $request->tour_id])
                ->first()->title;
            $objects = Infografika::query()
                ->where(['tour_id' => $request->tour_id])
                ->paginate(10);
        }

        if ((int)$request->page_id > 0) {
            $selectedPage = Page::query()
                ->where(['id' => $request->page_id])
                ->first()->title;
            $objects = Infografika::query()
                ->where(['about_id' => $request->page_id])
                ->paginate(10);
        }

        $pages = collect([
            (object)[
                'id' => 0,
                'name' => "Не выбрано",
            ],
            (object)[
                'id' => (int)Page::where('id', 1)->first()->id,
                'name' => Page::where('id', 1)->first()->title
            ]
        ]);

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

        $tours = collect([
            (object)[
                "id" => 0,
                "name" => "Не выбрано",
            ]
        ]);

        $pages = collect([
            (object)[
                "id" => 0,
                "name" => "Не выбрано",
            ],
            (object)[
                "id" => (int)Page::where('id', 1)->first()->id,
                "name" => Page::where('id', 1)->first()->title
            ]
        ]);

        foreach (Tour::orderBy('title')->get() as $tour) {
            $tours->push(
                (object)[
                    "id" => $tour->id,
                    "name" => $tour->title
                ]
            );
        }

        $selectedPage = !empty($object->page) ? $object->page->title : null;
        $selectedTour = !empty($object->tour) ? $object->tour->title : null;

        if ($request->isMethod('post')) {
            $object->fill(
                $request->only([
                    'title',
                    'text',
                    'subtitle',
                ])
            );

            if ((int)$request->attached_pages > 0)
                $object->fill(['about_id' => $request->attached_pages]);
            else
                $object->fill(['about_id' => null]);

            if ((int)$request->tour_id > 0)
                $object->fill(['tour_id' => $request->tour_id]);
            else
                $object->fill(['tour_id' => null]);

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
