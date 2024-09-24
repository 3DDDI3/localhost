@extends('layouts.default')

@section('head')
    <link rel="stylesheet" href="{{ asset('/css/search.css') }}?v={{ sha1_file(public_path() . '/css/search.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/blog.css') }}?v={{ sha1_file(public_path() . '/css/blog.css') }}">
@endsection

@section('content')
    <main>

        <div class="search-headding">
            <x-templates.bread-crumbs :data="$breadcrumbs" />
            <h1 class="search-headding__title">Поиск</h1>
        </div>

        <div class="search-result">
            <div class="search-result__list">
                @foreach ($results as $result)
                    @switch(get_class($result))
                        @case('App\Models\Lending\Tour')
                            <x-templates.blog url="tours/{{ $result->url }}" img="{{ $result->preview_image }}" alt=""
                                date="{{ $result->created_at }}" title="{{ $result->title }}" text="{{ $result->preview_text }}" />
                        @break

                        @case('App\Models\Lending\Blog')
                            <x-templates.blog url="blogs/{{ $result->url }}" img="{{ $result->image }}" alt=""
                                date="{{ $result->created_at }}" title="{{ $result->title }}"
                                text="{{ $result->preview_text }}" />
                        @break

                        @case('App\Models\Lending\News')
                            <x-templates.blog url="news/{{ $result->url }}" img="{{ $result->preview_image }}" alt=""
                                date="{{ $result->created_at }}" title="{{ $result->title }}"
                                text="{{ $result->preview_text }}" />
                        @break

                        @default
                    @endswitch
                @endforeach
            </div>
        </div>

        {{ $results->onEachSide(1)->links('components.paginator.index') }}

        <x-blocks.offer />

    </main>
@endsection
