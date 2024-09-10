<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function login()
    {
        request()->session()->flush();
        request()->session()->regenerate();
        return view('admin.login');
    }
}
