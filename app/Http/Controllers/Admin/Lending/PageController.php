<?php

namespace App\Http\Controllers\Admin\Lending;

use App\Helpers\FileUpload;
use App\Http\Controllers\Controller;
use App\Models\Files;
use App\Models\Lending\AttachedPage;
use App\Models\Lending\File;
use App\Models\Lending\Page;
use App\Models\Services\File as Document;
use App\Models\User\AdminEventLogs;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public $PATH = 'lending.pages';
    public $TITLE = ['Страницы', 'страницы'];

    public function index(Request $request)
    {
        $path = "$this->PATH";
        $title = $this->TITLE;

        $objects = Page::orderBy('rating', 'desc')->orderBy('id', 'desc')->get();

        if ($request->search) {
            $objects = Page::where("title", "LIKE", "%" . str_replace(' ', '%', $request->search) . "%")->get();
        }

        if ($id = $request->delete) {
            $item = Page::find($id);
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

        $object = $id ? Page::find($id) : new Page();

        $pages = Page::orderBy('rating', 'desc')->get();

        $pages = collect();

        foreach (Page::where('id', '!=', $object->id)->orderBy('rating', 'desc')->orderBy('id', 'desc')->get() as $page) {
            $pages->push(
                (object)[
                    'id' => $page->id,
                    'name' => $page->title
                ]
            );
        }

        $docs = collect();

        foreach (Document::orderBy('rating', 'desc')->get() as $doc) {
            $docs->push((object)[
                "id" => $doc->first()->id,
                "name" => $doc->first()->description
            ]);
        }

        $selectedDocs = collect();

        foreach ($object->attachedFiles()->get() as $file) {
            $selectedDocs->push($file->id);
        }

        $attached_pages = collect();

        if ($object->id != null && $object->attachedPages() != null) {
            foreach ($object->attachedPages()->orderBy('rating', 'desc')->get() as $page) {
                $attached_pages->push($page->attachedPage()->first()->id);
            }
        }

        if ($request->isMethod('post')) {
            $object ?? $object = new Page();

            $object->fill(
                $request->only(
                    [
                        'title',
                        'text',
                        'about_text_1',
                        'about_text_2',
                        'definition',
                    ]
                )
            );

            if (empty($object->url) && !empty($object->title)) $object->url = str_slug($object->title);

            if (!empty($request->input('attached_pages'))) {
                AttachedPage::where(['page_id' => $object->id])->delete();
                foreach ($request->input('attached_pages') as $page) {
                    if (AttachedPage::where(['page_id' => $object->id, 'attached_page_id' => $page])->get()->count() == 0)
                        AttachedPage::create(['page_id' => $object->id, 'attached_page_id' => $page]);
                }
            }

            $object->save();

            // dd($request->file('attached_files'));

            if ($request->file('attached_files') != null) {
                FileUpload::uploadFile('attached_files', Document::class, 'url', $object->id, '/storage/files/');
            }

            // if ($request->file('image') != null)
            //     FileUpload::uploadImage('image', News::class, 'image', $object->id, 377, 377, '/images/news/', request: $request);

            // if ($request->file('preview_image') != null)
            //     FileUpload::uploadImage('preview_image', News::class, 'preview_image', $object->id, 377, 377, '/images/news/', request: $request);

            AdminEventLogs::log($object, $id);

            return redirect()->route('admin.' . $this->PATH . '.edit', ['id' => $object->id])->with('message', 'Сохранено');
        }

        return view('admin.modules.' . $this->PATH . '.edit', compact(
            'object',
            'path',
            'title',
            'pages',
            'attached_pages',
            'docs',
            'selectedDocs'
        ));
    }
}
