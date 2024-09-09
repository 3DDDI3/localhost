<?php

use App\Http\Controllers\PersonalAcount\PersonalAcountController;
use Illuminate\Support\Facades\Route;

Route::get('/', [PersonalAcountController::class, 'index']);
