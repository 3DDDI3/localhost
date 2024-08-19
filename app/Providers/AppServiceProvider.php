<?php

namespace App\Providers;

use App\Contracts\Catalog;
use App\Models\Catalog\CatalogProducts;
use App\Models\Catalog\Categories\CatalogCategories;
use App\Models\Catalog\Qualities\CatalogQualitiesTypes;
use App\Models\Catalog\Series\CatalogSeries;
use App\Models\Constructor\ConstructorProducts;
use App\Models\Lending\Page;
use App\Models\Page\PageSection;
use App\Models\SEO;
use App\Models\Setting;
use App\Models\Tests\TestsQuestions;
use App\Services\Cart\Cart;
use App\Services\Constructor\Constructor;
use App\Services\Pages\Pages;
use App\Services\Payment\YouKassa;
use App\Services\Reviews\Reviews;
use App\Services\Tests\Tests;
use Artesaos\SEOTools\Facades\JsonLd;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\TwitterCard;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Intervention\Image\Image;
use YooKassa\Client;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        if (\App::runningInConsole()) return; //чтобы не было проблем с миграциями

        $this->app->bind(\App\Contracts\Pages::class, fn() => new Pages(
            new \App\Models\Page\Page(),
            new \Request()
        ));

        if (Request::ajax()) return;

        $setting = Setting::find(1);



        $seo = new \App\Services\SEO\SEO(
            SEO::where('url', Request::path())->first(),
            new SEOMeta(),
            new OpenGraph(),
            new TwitterCard(),
            new JsonLd()
        );

        $seo->buildSets();

        $pages = Page::all();

        // View::composer('includes.head', fn($view) => $view->with(['seo' => $seo]));
        View::composer('layouts.default', fn($view) => $view->with([
            'setting' => $setting,
            'seo' => $seo,
            'pages' => $pages,
        ]));
    }
}
