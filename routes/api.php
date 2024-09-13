<?php

use App\Http\Controllers\FeedbackController;
use App\Http\Controllers\PersonalAcount\AuthorizationController;
use App\Http\Resources\MaillerResource;
use App\Jobs\Parse;
use App\Models\Job;
use App\Models\Lending\Tour;
use App\Models\Mailler;
use App\View\Components\Blocks\ComboboxItem;
use Barryvdh\DomPDF\Facade\Pdf;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Storage;
use Illuminate\View\ComponentAttributeBag;
use Psy\Command\WhereamiCommand;

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

Route::get('files/download/{path}', function ($path) {
        return Storage::download("files/$path");
});

Route::withoutMiddleware('api')
        ->post('mailler/create', function (Request $request) {
                if (
                        Mailler::query()
                        ->where(['email' => $request->email])
                        ->count() > 0
                )
                        return response()->json(['message' => 'Вы уже подписаны на рассылку'], 200);
                else {
                        Mailler::create([
                                'email' => $request->email,
                                'isAgent' => $request->isAgent,
                        ]);
                        return response()->json(['message' => 'Вы подписались на рассылку!'], 200);
                }
        });

Route::get('/getUsers', function (Request $request) {
        return MaillerResource::collection(Mailler::query()->select('email')->get());
});

Route::withoutMiddleware('api')
        ->post('export_tours', function () {
                if (Job::all()->count() > 0)
                        return response()->json(['message' => 'Операция уже выполняется']);

                Parse::dispatch();
        });

Route::prefix('samotour')->group(function () {
        Route::get('/getPrice', function (Request $request) {
                $samotour_url = config('samotour.samotour_api_url');
                $samotour_token = config('samotour.samotour_api_token');

                if ($request->child != null) {
                        $ages = [];

                        for ($i = 0; $i < $request->child; $i++) {
                                $ages[] = 0;
                        }
                        $ages = implode(",", $ages);
                }

                try {
                        $client = new Client(['verify' => false]);
                        // dd("$samotour_url&oauth_token=$samotour_token&type=json&action=SearchTour_PRICES&TOWNFROMINC=$request->from&STATEINC=$request->country&CHECKIN_BEG=$request->begDate&CHECKIN_END=$request->endDate&NIGHTS_FROM=$request->nights&NIGHTS_TILL=$request->nights&ADULT=$request->adults&CURRENCY=1&STARS=$request->hotelCategory&MEALS=$request->meal&CHILD=$request->child&HOTELS=$request->hotel&TOURS=$request->tour&AGES=$ages");
                        $res = $client->get("$samotour_url&oauth_token=$samotour_token&type=json&action=SearchTour_PRICES&TOWNFROMINC=$request->from&STATEINC=$request->country&CHECKIN_BEG=$request->begDate&CHECKIN_END=$request->endDate&NIGHTS_FROM=$request->nights&NIGHTS_TILL=$request->nights&ADULT=$request->adults&CURRENCY=1&STARS=$request->hotelCategory&MEALS=$request->meal&CHILD=$request->child&HOTELS=$request->hotel&TOURS=$request->tour&AGES=$ages");
                        $tours = json_decode($res->getBody()->getContents())->SearchTour_PRICES->prices;
                        if (count($tours) == 0)
                                return response()->json([], 404);

                        return response()->json([
                                'id' => $tours[0]->id,
                                'price' => number_format(preg_replace("/[^0-9]/", "", $tours[0]->convertedPrice), 2, '.', ' ')
                        ], 200);
                } catch (\Throwable $th) {
                }
        });

        Route::get('/getCountries', function (Request $request) {
                try {
                        $samotour_url = config('samotour.samotour_api_url');
                        $samotour_token = config('samotour.samotour_api_token');
                        $client = new Client(['verify' => false]);
                        $res = $client->get("$samotour_url&oauth_token=$samotour_token&type=json&action=SearchTour_STATES&TOWNFROMINC=$request->id");
                        $combobox = new ComboboxItem();
                        $content =  json_decode($res->getBody()->getContents())->SearchTour_STATES;
                        return $combobox->render()->with(
                                ['attributes' => new ComponentAttributeBag(
                                        ['objects' => count($content) > 0 ? $content : null]
                                )]
                        );
                } catch (\Throwable $th) {
                }
        });
});

Route::prefix('/auth')
        ->controller(AuthorizationController::class)
        ->group(function () {
                Route::post('/signin', 'signin');
                Route::post('/login', 'login');
                Route::post('/logout', 'logout')->middleware('auth:sanctum');
                Route::post('/check', 'check')->middleware('auth:sanctum');
                Route::post('/send-mail', 'sendMail')->withoutMiddleware('api');
                Route::post('/reset', 'reset')->withoutMiddleware('api');
        });

Route::prefix('feedback')
        ->controller(FeedbackController::class)
        ->withoutMiddleware('api')
        ->group(function () {
                Route::post('/create', 'create');
        });
