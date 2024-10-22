<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Helpers\FileUpload;
use App\Http\Controllers\Controller;
use App\Models\Lending\Status;
use App\Models\User\AdminEventLogs;
use Illuminate\Http\Request;

class StatusController extends Controller
{
    public $PATH = 'lending.tours.status';
    public $TITLE = ['Статусы', 'статуса'];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $objects = Status::query()->orderBy('rating', 'desc')->get();

        if ($request->search) {
            $objects = Status::query()
                ->where('name', 'LIKE', '%' . str_replace(' ', '%', $request->search) . '%')
                ->paginate(10);
        }

        if ($id = $request->delete) {
            $item = Status::find($id);
            $item->delete();
            AdminEventLogs::log($item, $id);
            return redirect()->back()->with('message', 'Удалено');
        }

        return view('admin.modules.' . $path . '.index', compact('objects', 'path', 'title'));
    }

    public function edit(Request $request, $id = null)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $object = $id ? Status::find($id) : new Status();

        if (empty($object)) $object = new Status();

        if ($request->isMethod('post')) {
            $object->fill(
                $request->only(
                    [
                        'name',
                    ]
                )
            );

            $object->save();

            FileUpload::uploadImage('icon', Status::class, 'icon', $object->id, 24, 24, '/images/tours/static_icons', request: $request);

            AdminEventLogs::log($object, $id);

            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact(
            'object',
            'path',
            'title',
        ));
    }
}
