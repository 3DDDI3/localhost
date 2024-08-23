<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Http\Controllers\Controller;
use App\Models\Lending\Country;
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

        $objects = Country::query()->orderBy('rating', 'desc')->paginate(10);

        if ($request->search) {
            $objects = Country::where("name", "LIKE", "%" . str_replace(' ', '%', $request->search) . "%")->paginate(10);
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

            $object ?? $object = new Country();

            $object->fill(
                $request->only(
                    [
                        'name'
                    ]
                )
            );

            if (empty($object->url) && !empty($object->title)) $object->url = str_slug($object->title);

            $object->save();

            AdminEventLogs::log($object, $id);

            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact('object', 'path', 'title'));
    }
}
