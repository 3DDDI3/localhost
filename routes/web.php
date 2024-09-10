<?php

use App\Http\Controllers\BlogsController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\ToursController;
use App\Jobs\Parse;
use App\Mail\RegistrationMail;
use App\Mail\RegistrationMailer;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//if (\App::runningInConsole()) return; //чтобы не было проблем с миграциями

Route::group(['namespace' => 'App\Http\Controllers'], function () {

    // Route::get('/', 'IndexController@index');
    Route::match(['get', 'post'], '/', [IndexController::class, 'index'])->name('index');

    Route::prefix('pages')->group(function () {
        Route::get('/{url}', [PageController::class, 'index']);
    });

    Route::prefix('news')->group(function () {
        Route::get('/', [NewsController::class, 'index']);
        Route::get('/{url}', [NewsController::class, 'new']);
    });

    Route::prefix('blogs')->group(function () {
        Route::get('/', [BlogsController::class, 'index']);
        Route::get('/{url}', [BlogsController::class, 'blog']);
    });

    Route::prefix('tours')->group(function () {
        Route::get('/', [ToursController::class, 'index']);
        Route::get('/{url}', [ToursController::class, 'tour']);
    });

    Route::get('/search', [SearchController::class, 'index']);

    Route::get('/pdf', function () {
        $pdf = Pdf::loadView('pdf.test');
        return $pdf->stream();
    });

    Route::get('/test', function (Request $request) {
        Mail::to("edik2898@gmail.com")->send(new RegistrationMail());
    });

    Route::get('/test1', function () {
        echo 1;
    })->middleware('auth:sanctum');

    include('admin.php');
});



//Route::view('{any?}' , 'app' );
