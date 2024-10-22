<?php

namespace App\Http\Controllers\Admin\Services;

use App\Helpers\FileUpload;
use App\Http\Controllers\Controller;
use App\Models\Lending\Adv;
use App\Models\User\AdminEventLogs;
use Illuminate\Http\Request;

class AdvController extends Controller
{
    public $PATH = 'services.advs';
    public $TITLE = ['Реклама', 'рекламы'];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $selectedPage = null;
        $selectedTour = null;

        $objects = Adv::query()
            ->orderBy('rating', 'desc')
            ->orderBy('id', 'desc')
            ->paginate(10);

        if ($request->search) {
            $objects = Adv::query()
                ->where('title', 'LIKE', '%' . str_replace(' ', '%', $request->search) . '%')
                ->paginate(10);
        }

        if ($id = $request->delete) {
            $item = Adv::find($id);
            $item->delete();
            AdminEventLogs::log($item, $id);
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

        $object = $id ? Adv::find($id) : new Adv();

        if ($request->isMethod('post')) {
            $object->fill(
                $request->only(([
                    'title',
                    'subtitle',
                    'text',
                ]))
            );

            $object->save();

            if ($request->file('img') != null)
                FileUpload::uploadImage('img', Adv::class, 'img', $object->id, 1348, null, '/images/advs', request: $request);

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
