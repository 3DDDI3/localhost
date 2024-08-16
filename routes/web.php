<?php

use App\Http\Controllers\AboutCompanyController;
use App\Http\Controllers\AgencyController;
use App\Http\Controllers\BlogsController;
use App\Http\Controllers\ContactsController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\TouristController;
use App\Http\Controllers\ToursController;
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
    Route::match(['get', 'post'], '/', 'IndexController@index');

    Route::get('/about-company', [AboutCompanyController::class, 'index']);

    Route::prefix('news')->group(function () {
        Route::get('/', [NewsController::class, 'index']);
        Route::get('/{id}', [NewsController::class, 'new']);
    });

    Route::prefix('contacts')->group(function () {
        Route::get('/', [ContactsController::class, 'index']);
    });

    Route::prefix('blogs')->group(function () {
        Route::get('/', [BlogsController::class, 'index']);
        Route::get('/{id}', [BlogsController::class, 'blog']);
    });

    Route::prefix('tours')->group(function () {
        Route::get('/', [ToursController::class, 'index']);
        Route::get('/{url}', [ToursController::class, 'tour']);
    });

    Route::get('agency', [AgencyController::class, 'index']);
    Route::get('tourist', [TouristController::class, 'index']);

    include('admin.php');
});



//Route::view('{any?}' , 'app' );
