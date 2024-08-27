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
                @foreach ($news as $new)
                    <x-templates.news url="{{ $new->url }}" img="{{ $new->preview_image }}" alt=""
                        date="{{ $new->created_at }}" title="{{ $new->title }}" />
                @endforeach

            </div>
        </div>

        {{ $news->onEachSide(1)->links('components.paginator.index') }}

        <x-blocks.offer />

    </main>
@endsection
