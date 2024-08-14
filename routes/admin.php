<?php

use App\Http\Controllers\Service\CountryController;
use App\Http\Controllers\Admin\Lending\InfografikaController;
use App\Http\Controllers\Admin\Lending\ProgramsController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Models\User\PermittedIPs;
use App\Models\Location\Geo;


Route::group(['prefix' => 'admin', 'as' => 'admin.'], function () {

    Route::post('ajax', function (Request $request) {
        $controller = new \App\Http\Controllers\Admin\AdminAjax();
        $controller($request->action);
    })->withoutMiddleware([\App\Http\Middleware\VerifyCsrfToken::class]);

    Route::post('login', 'Auth\LoginController@login');
    Route::get('logout', 'Auth\LoginController@logout')->name('logout');

    Route::group(['namespace' => 'Admin'], function () {
        Route::get('login', 'LoginController@login')->name('login');

        Route::group(['middleware' => ['auth', 'admin', 'admin_access']], function () {

            Route::group(['prefix' => 'users', 'as' => 'users.', 'namespace' => 'Users'], function () {
                Route::group(['prefix' => 'users', 'as' => 'users.'], function () {
                    Route::get('/', 'UsersController@index')->name('index');
                    Route::match(['get', 'post'], '/edit/{id?}', 'UsersController@edit')->name('edit');
                });

                Route::group(['prefix' => 'classes', 'as' => 'classes.'], function () {
                    Route::get('/', 'UsersClassesController@index')->name('index');
                    Route::match(['get', 'post'], '/edit/{id?}', 'UsersClassesController@edit')->name('edit');
                });

                Route::group(['prefix' => 'admin_event_logs', 'as' => 'admin_event_logs.'], function () {
                    Route::get('/', 'AdminEventLogsController@index')->name('index');
                    Route::match(['get', 'post'], '/edit/{id?}', 'AdminEventLogsController@edit')->name('edit');
                });
            });

            Route::group(['prefix' => 'settings', 'as' => 'settings.'], function () {
                Route::match(['get', 'post'], '/', 'SettingsController@index')->name('index');
            });

            Route::group(['prefix' => 'page', 'as' => 'page.'], function () {
                Route::get('/', 'PageController@index')->name('index');
                Route::match(['get', 'post'], '/edit/{id?}', 'PageController@edit')->name('edit');
            });

            Route::group(['prefix' => 'seo', 'as' => 'seo.'], function () {
                Route::get('/', 'SEOController@index')->name('index');
                Route::match(['get', 'post'], '/edit/{id?}', 'SEOController@edit')->name('edit');
            });

            // Route::group(['prefix' => 'search_checkboxes', 'as' => 'search_checkboxes.'], function () {
            //     //
            // });

            Route::group(['prefix' => 'lending', 'as' => 'lending.', 'namespace' => 'Lending'], function () {
                Route::group(['prefix' => 'slider', 'as' => 'slider.'], function () {
                    Route::get('/', 'SliderController@index')->name('index');
                    Route::match(['get', 'post'], '/edit/{id?}', 'SliderController@edit')->name('edit');
                });
                Route::group(['prefix' => 'slider2', 'as' => 'slider2.'], function () {
                    Route::get('/', 'Slider2Controller@index')->name('index');
                    Route::match(['get', 'post'], '/edit/{id?}', 'Slider2Controller@edit')->name('edit');
                });
                Route::group(['prefix' => 'text', 'as' => 'text.'], function () {
                    Route::get('/', 'TextController@index')->name('index');
                    Route::match(['get', 'post'], '/edit/{id?}', 'TextController@edit')->name('edit');
                });
                Route::group(['prefix' => 'specs', 'as' => 'specs.'], function () {
                    Route::get('/', 'SpecsController@index')->name('index');
                    Route::match(['get', 'post'], '/edit/{id?}', 'SpecsController@edit')->name('edit');
                });

                Route::group(['prefix' => 'tours', 'as' => 'tours.'], function () {
                    Route::get('/', 'ToursController@index')->name('index');
                    Route::match(['get', 'post'], '/edit/{id?}', 'ToursController@edit')->name('edit');

                    Route::group(['prefix' => 'countries', 'as' => 'countries.'], function () {
                        Route::get('/', [CountryController::class, 'index'])->name('index');
                        Route::match(['get', 'post'], '/edit/{id?}', [CountryController::class, 'edit'])->name('edit');
                    });

                    Route::group(['prefix' => 'infografika', 'as' => 'infografika.'], function () {
                        Route::get('/', [InfografikaController::class, 'index'])->name('index');
                        Route::match(['get', 'post'], '/edit/{id?}', [InfografikaController::class, 'edit'])->name('edit');
                    });

                    Route::group(['prefix' => 'programms', 'as' => 'programms.'], function () {
                        Route::get('/', [ProgramsController::class, 'index'])->name('index');
                        Route::match(['get', 'post'], '/edit/{id?}', [ProgramsController::class, 'edit'])->name('edit');
                    });
                });
            });
            Route::group(['prefix' => 'requests', 'as' => 'requests.'], function () {
                Route::get('/', 'RequestsController@index')->name('index');
            });

            // Route::group(['prefix' => 'service', 'as' => 'service.', 'namespace' => 'Service'], function () {
            // Route::group(['prefix' => 'countries', 'as' => 'countries.'], function () {
            //     Route::get('/', [CountryController::class, 'index'])->name('index');
            //     Route::match(['get', 'post'], '/edit/{id?}', [CountryController::class, 'edit'])->name('edit');
            // });
            // });
        });
    });

    Route::get('/', function () {
        return redirect()->route(auth()->check() ? 'admin.settings.index' : 'admin.login');
    });
});
