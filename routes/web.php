<?php

use App\Http\Controllers\AboutCompanyController;
use App\Http\Controllers\AgencyController;
use App\Http\Controllers\BlogsController;
use App\Http\Controllers\ContactsController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\SearchController;
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
    Route::match(['get', 'post'], '/', [IndexController::class, 'index']);

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

    include('admin.php');
});



//Route::view('{any?}' , 'app' );
