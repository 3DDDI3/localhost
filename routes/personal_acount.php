<?php

use App\Http\Controllers\PersonalAcount\PersonalAcountController;
use Illuminate\Support\Facades\Route;

Route::get('/{url}', [PersonalAcountController::class, 'index'])
    ->name('pa')
    ->middleware('auth:sanctum');
