<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Http\Controllers\Controller;
use App\Models\Lending\Texts;
use Illuminate\Http\Request;

class TextController extends Controller
{
    public $PATH = 'lending.text';
    public $TITLE = ['Текст', 'текстовой блок'];
    public $MODEL = Texts::class;

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $objects = $this->MODEL::orderBy('id', 'asc');

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
            \App\Models\User\AdminEventLogs::log($object, $id);
            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact('object', 'path', 'title'));
    }

}