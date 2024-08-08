<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Http\Controllers\Controller;
use App\Models\Lending\Specs;
use Illuminate\Http\Request;
use App\Helpers\FileUpload;

class SpecsController extends Controller
{
    public $PATH = 'lending.specs';
    public $TITLE = ['Характеристики', 'характеристики'];
    public $MODEL = Specs::class;

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $objects = $this->MODEL::orderBy('rating', 'desc')->orderBy('id', 'desc');

        if ($request->search) {
            $objects = $objects->where('name', 'LIKE', '%' . str_replace(' ', '%', $request->search) . '%');
        }

        if ($id = $request->delete) {
            $item = $this->MODEL::find($id);
            $item->delete();
            \App\Models\User\AdminEventLogs::log($item, $id);
            return redirect()->back()->with('message', 'Удалено');
        }

        $objects = $objects->get();

        return view('admin.modules.' . $path . '.index', compact('objects', 'path', 'title'));
    }

    public function edit(Request $request, $id = null)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $object = $id ? $this->MODEL::find($id) : new $this->MODEL();

        if ($request->isMethod('post')) {
            $object->fill($request->except(['_token', 'image']));
            $object->save();
            // FileUpload::uploadImage('image', $this->MODEL, 'image', $object->id, 377, 377, '/images/specs', false, $request);
            \App\Models\User\AdminEventLogs::log($object, $id);
            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact('object', 'path', 'title'));
    }

}