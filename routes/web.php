<?php

use App\Exports\MaillingExport;
use App\Http\Controllers\BlogsController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\ToursController;
use App\Jobs\Parse;
use App\Mail\RegistrationMail;
use App\Mail\RegistrationMailer;
use App\Models\Lending\Tour;
use App\Models\Services\Agent;
use Barryvdh\DomPDF\Facade\Pdf;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Route;
use Maatwebsite\Excel\Facades\Excel;

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

    Route::get('/files', function (Request $request) {
        if (!$request->url)
            abort(404, 'Что-то пошло не так');
        $tour = Tour::query()->where(['url' => $request->url])->first();

        $agent = auth()->user() == null ? null : auth()->user()->agent;

        $pdf = Pdf::loadView('pdf.tour_program', compact('tour', 'agent'));
        return $pdf->stream();
    });

    Route::get('test', function () {

        $samotour_url = config('samotour.samotour_api_url');
        $samotour_token = config('samotour.samotour_api_token');

        $client = new Client(['verify' => false]);

        $results = collect();

        $res = $client->get("$samotour_url&oauth_token=$samotour_token&type=json&action=SearchTour_PRICES&TOWNFROMINC=290&STATEINC=36&CHECKIN_BEG=20241002&CHECKIN_END=20241101&NIGHTS_FROM=0&NIGHTS_TILL=14&ADULT=1&CURRENCY=1&STARS=&MEALS=&HOTELS=&TOURS=2503");
        $results->push(json_decode($res->getBody()->getContents())->SearchTour_PRICES->prices);

        // $res = $client->get("$samotour_url&oauth_token=$samotour_token&type=json&action=SearchTour_PRICES&TOWNFROMINC=290&STATEINC=36&CHECKIN_BEG=20241002&CHECKIN_END=20241101&NIGHTS_FROM=0&NIGHTS_TILL=14&ADULT=2&CURRENCY=1&STARS=&MEALS=&HOTELS=&TOURS=2503");
        // $results->push(json_decode($res->getBody()->getContents())->SearchTour_PRICES->prices);


        dd($results);
    });

    include('admin.php');
});


//Route::view('{any?}' , 'app' );
