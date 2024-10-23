<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Helpers\FileUpload;
use App\Http\Controllers\Controller;
use App\Models\Lending\Slider;
use App\Models\User\AdminEventLogs;
use Illuminate\Http\Request;

class MainSliderController extends Controller
{
    public $PATH = 'lending.sliders.main';
    public $TITLE = ['Слайдер', 'изображения'];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $objects = Slider::query()
            ->where(['page' => 'main'])
            ->orderBy('rating', 'desc')
            ->paginate(10);

        if ($request->search) {
            $objects = Slider::where('type', 'LIKE', '%' . str_replace(' ', '%', $request->search) . '%')->get();
        }

        if ($id = $request->delete) {
            $item = Slider::find($id);
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

        $object = $id ? Slider::find($id) : new Slider();

        if (empty($object)) $object = new Slider();

        if ($request->isMethod('post')) {

            // $object->save();

            $slider = Slider::query()->orderBy('id', 'desc')->first();

            $object->id = !$slider ? 1 : $slider->id + 1;
            $object->page = "main";

            $object->url = $request->input('url');

            $object->save();

            // dd(phpinfo());
            FileUpload::uploadImage('text', Slider::class, 'text', $object->id, 425, 200, '/images/tours', request: $request);

            FileUpload::uploadImage('image', Slider::class, 'image', $object->id, 400, 779, '/images/tours', request: $request);

            // AdminEventLogs::log($object, $id);

            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact(
            'object',
            'path',
            'title',
        ));
    }
}
