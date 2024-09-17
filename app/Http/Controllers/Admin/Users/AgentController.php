<?php

namespace App\Http\Controllers\Admin\Users;

use App\Helpers\FileUpload;
use App\Http\Controllers\Controller;
use App\Models\Services\Agent;
use App\Models\User\AdminEventLogs;
use App\Models\User\User;
use Illuminate\Http\Request;

class AgentController extends Controller
{
    public $PATH = 'users.agents';
    public $TITLE = ['Агенты', 'агента'];

    public function index(Request $request)
    {
        $path = $this->PATH;
        $title = $this->TITLE;

        $objects = Agent::orderBy('id', 'desc')->paginate(12);

        if ($request->search)
            $objects = Agent::query()
                ->where('name', 'like', '%' . $request->search . '%')
                ->paginate(12);

        if ($id = $request->delete) {
            $item = Agent::find($id);
            $item->delete();
            AdminEventLogs::log($item, $id);
            return redirect()->back()->with('message', 'Удалено');
        }

        return view('admin.modules.users.agents.index', compact(
            'objects',
            'path',
            'title'
        ));
    }

    public function edit(Request $request, $id = null)
    {
        $path = $this->PATH;
        $title = $this->TITLE;

        $object = $id ? Agent::find($id) : new Agent();

        if ($request->isMethod('post')) {

            $object->fill([
                'isConfirmed' => 0,
                'isActive' => 0,
            ]);

            $object->fill($request->only([
                'name',
                'phone',
                'address',
                'text',
                'isConfirmed',
                'isActive',
            ]));

            $object->save();

            $object->user->email = $request->email;
            $object->user->save();

            FileUpload::uploadImage('logo', Agent::class, 'logo', $object->id, 190, 160, '/images/agents', request: $request);

            AdminEventLogs::log($object, $id);

            return redirect()->route('admin.users.agents.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view(
            'admin.modules.users.agents.edit',
            compact(
                'path',
                'title',
                'object',
            )
        );
    }
}
