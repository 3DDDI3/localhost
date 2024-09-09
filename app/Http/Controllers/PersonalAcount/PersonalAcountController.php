<?php

namespace App\Http\Controllers\PersonalAcount;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PersonalAcountController extends Controller
{
    public function index()
    {
        return view('personal_acount.index');
    }
}
