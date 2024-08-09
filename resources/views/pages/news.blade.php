@extends('layouts.default')

@section('head')
    <link rel="stylesheet" href="{{ asset('/css/news.css') }}?v={{ sha1_file(public_path() . '/css/news.css') }}">
@endsection

@section('content')
    <main>

        <div class="news-headding">
            <x-templates.bread-crumbs :data="$breadcrumbs" />
        </div>

        <div class="news">
            <div class="news__headding page-headding">
                <span class="news-headding__title page-headding__title">Новости<span
                        class="news-headding__subtitle page-headding__subtitle">туризма</span></span>
            </div>
            <div class="news-list">
                <x-templates.news url="news/1" img="{{ asset('images/news1.png') }}" alt="" date="15.04.2024"
                    title="Авиакомпания Utair повезет туристов в Анталью и Сочи" />
                <x-templates.news url="news/1" img="{{ asset('images/news2.png') }}" alt="" date="11.04.2024"
                    title="Белгородский центр туризма получил Гран-при" />
                <x-templates.news url="news/1" img="{{ asset('images/news3.png') }}" alt="" date="11.04.2024"
                    title="На границе с Китаем в сумке туриста нашли зубы кашалота" />
                <x-templates.news url="news/1" img="{{ asset('images/news1.png') }}" alt="" date="15.04.2024"
                    title="Авиакомпания Utair повезет туристов в Анталью и Сочи" />
                <x-templates.news url="news/1" img="{{ asset('images/news2.png') }}" alt="" date="11.04.2024"
                    title="Белгородский центр туризма получил Гран-при" />
                <x-templates.news url="news/1" img="{{ asset('images/news3.png') }}" alt="" date="11.04.2024"
                    title="На границе с Китаем в сумке туриста нашли зубы кашалота" />
            </div>
        </div>

        <x-templates.paginator />

        <x-blocks.offer />

    </main>
@endsection
