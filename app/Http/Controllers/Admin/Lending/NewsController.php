<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Helpers\FileUpload;
use App\Http\Controllers\Controller;
use App\Models\Lending\News;
use App\Models\User\AdminEventLogs;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public $PATH = 'lending.news';
    public $TITLE = ['Новости', 'новости'];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $objects = News::orderBy('rating', 'desc')->orderBy('id', 'desc')->get();

        if ($request->search) {
            $objects = News::where("title", "LIKE", "%" . str_replace(' ', '%', $request->search) . "%")->get();
        }

        if ($id = $request->delete) {
            $item = News::find($id);
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

        $object = $id ? News::find($id) : new News();

        if ($request->isMethod('post')) {

            $object ?? $object = new News();

            $object->fill(
                $request->only(
                    [
                        'title',
                        'text',
                        'preview_text'
                    ]
                )
            );

            if (empty($object->url) && !empty($object->title)) $object->url = str_slug($object->title);

            $object->save();

            if ($request->file('image') != null)
                FileUpload::uploadImage('image', News::class, 'image', $object->id, 377, 377, '/images/news/', request: $request);

            if ($request->file('preview_image') != null)
                FileUpload::uploadImage('preview_image', News::class, 'preview_image', $object->id, 377, 377, '/images/news/', request: $request);

            AdminEventLogs::log($object, $id);

            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact('object', 'path', 'title'));
    }
}
