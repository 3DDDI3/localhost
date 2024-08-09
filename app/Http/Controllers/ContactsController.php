<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ContactsController extends Controller
{
    public function index()
    {
        $breadCrumbs = collect([
            (object)[
                'name' => 'Главная',
                'url' => '/',
            ],
            (object)[
                'name' => 'Контакты',
            ]
        ]);

        return view('pages.contacts', [
            'breadcrumbs' => $breadCrumbs,
        ]);
    }
}
