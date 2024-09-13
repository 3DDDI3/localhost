<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Helpers\FileUpload;
use App\Http\Controllers\Controller;
use App\Models\Lending\TourType;
use App\Models\Lending\TourTypes;
use App\Models\User\AdminEventLogs;
use Illuminate\Http\Request;

class TypeController extends Controller
{
    public $PATH = 'lending.tours.types';
    public $TITLE = ['Типы', 'типа'];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $objects = TourTypes::query()->orderBy('rating', 'desc')->paginate(10);

        if ($request->search) {
            $objects = TourTypes::where('type', 'LIKE', '%' . str_replace(' ', '%', $request->search) . '%')->get();
        }

        if ($id = $request->delete) {
            $item = TourTypes::find($id);
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

        $object = $id ? TourTypes::find($id) : new TourTypes();

        if (empty($object)) $object = new TourType();

        if ($request->isMethod('post')) {

            $object->fill(
                $request->only(
                    [
                        'type',
                    ]
                )
            );

            $object->save();

            FileUpload::uploadImage('image', TourTypes::class, 'image', $object->id, 425, 200, '/images/tours', request: $request);

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
