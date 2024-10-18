<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Helpers\FileUpload;
use App\Http\Controllers\Controller;
use App\Models\Lending\Blog;
use App\Models\User\AdminEventLogs;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public $PATH = 'lending.blogs';
    public $TITLE = ['Статьи блога', 'статьи'];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $objects = Blog::orderBy('rating', 'desc')->orderBy('id', 'desc');

        $objects = $objects->paginate(10);

        if ($request->search) {
            $objects = Blog::where("title", "LIKE", "%" . str_replace(' ', '%', $request->search) . "%")->paginate(10);
        }

        if ($id = $request->delete) {
            $item = Blog::find($id);
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

        $object = $id ? Blog::find($id) : new Blog();

        if ($request->isMethod('post')) {

            $object ?? $object = new Blog();

            $object->fill(
                $request->only(
                    [
                        'title',
                        'url',
                        'text',
                        'preview_text'
                    ]
                )
            );

            $object->url = $object->url == null ? str_slug($object->title) : $object->url;

            $object->save();

            if ($request->file('image') != null)
                FileUpload::uploadImage('image', Blog::class, 'image', $object->id, 425, 205, '/images/blogs/', request: $request);

            if ($request->file('preview_image') != null)
                FileUpload::uploadImage('preview_image', Blog::class, 'preview_image', $object->id, 425, 205, '/images/blogs/', request: $request);

            AdminEventLogs::log($object, $id);

            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact('object', 'path', 'title'));
    }
}
