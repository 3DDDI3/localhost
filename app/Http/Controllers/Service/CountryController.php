<?php

namespace App\Http\Controllers\Service;

use App\Http\Controllers\Controller;
use App\Models\Service\Country;
use App\Models\User\AdminEventLogs;
use Illuminate\Http\Request;

class CountryController extends Controller
{
    public $PATH = 'lending.tours.countries';
    public $TITLE = ['Страны', 'страны'];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $objects = Country::all();

        if ($request->search) {
            $objects = $objects->where('name', 'LIKE', '%' . str_replace(' ', '%', $request->search) . '%');
        }

        if ($id = $request->delete) {
            $item = Country::find($id);
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

        $object = $id ? Country::find($id) : new Country();

        if ($request->isMethod('post')) {
            $object->fill(
                $request->only(
                    [
                        '_token',
                        'name',
                    ]
                )
            );

            $object->save();

            // FileUpload::uploadImage('image', $this->MODEL, 'image', $object->id, 377, 377, '/images/specs', false, $request);
            AdminEventLogs::log($object, $id);
            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact('object', 'path', 'title'));
    }
}
