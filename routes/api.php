<?php

use App\Http\Controllers\Admin\Lending\InfografikaController;
use App\Models\Mailler;
use App\View\Components\Blocks\ComboboxItem;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Storage;
use Illuminate\View\ComponentAttributeBag;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::get('files/download/{path}', function ($path) {
        return Storage::download("files/$path");
});

Route::get('/samotur/getCountries', function () {
        $client = new Client(['verify' => false]);
        $res = $client->get('https://online.mercury-europe.ru/export/default.php?samo_action=api&version=1.0&oauth_token=5104feaa290d42d7a60d4b8710451fcd&type=json&action=SearchTour_STATES&TOWNFROMINC=' . request()->input('id'));
        $combobox = new ComboboxItem();
        $content =  json_decode($res->getBody()->getContents())->SearchTour_STATES;
        return $combobox->render()->with(
                ['attributes' => new ComponentAttributeBag(
                        ['objects' => count($content) > 0 ? $content : null]
                )]
        );
});

Route::post('mailler/create', function () {
        Mailler::create(['email' => request()->input('email')]);
        return response(status: 200);
});
