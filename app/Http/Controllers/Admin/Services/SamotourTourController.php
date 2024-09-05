<?php

namespace App\Http\Controllers\Admin\Services;

use App\Http\Controllers\Controller;
use App\Models\Services\SamotourTour;
use Illuminate\Http\Request;

class SamotourTourController extends Controller
{
    public $PATH = 'services.export';
    public $TITLE = ['Туры из Самотура', ''];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $objects = SamotourTour::query()->orderBy('id')->paginate(10);

        if ($request->search) {
            $objects = SamotourTour::query()->where('name', 'LIKE', '%' . str_replace(' ', '%', $request->search) . '%')->paginate(10);
        }

        if ($id = $request->delete) {
            return redirect()->back()->with('message', 'Удалено');
        }

        return view('admin.modules.' . $path . '.index', compact(
            'objects',
            'path',
            'title',
        ));
    }

    public function edit(Request $request, $id = null)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        // $object = $id ? Personal::find($id) : new Personal();

        // if ($request->isMethod('post')) {
        //     $object->fill(
        //         $request->only(
        //             [
        //                 'name',
        //                 'email',
        //                 'description',
        //             ]
        //         )
        //     );

        //     $object->save();

        //     AdminEventLogs::log($object, $id);

        //     return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        // }

        return view('admin.modules.' . $this->PATH . '.edit', compact(
            'object',
            'path',
            'title',
        ));
    }
}
