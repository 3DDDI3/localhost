@extends('layouts.default')

@section('head')
    <link rel="stylesheet" href="{{ asset('/css/blog.css') }}?v={{ sha1_file(public_path() . '/css/blog.css') }}">
@endsection

@section('content')
    <main>

        <div class="blog-headding">
            <x-templates.bread-crumbs :data="$breadcrumbs" />
            <div class="blog__headding page-headding">
                <span class="blog-headding__title page-headding__title">Туристический<span
                        class="blog-headding__subtitle page-headding__subtitle">Блог</span></span>
            </div>
        </div>

        <div class="blogs">
            <div class="blogs-list">
                @foreach ($blogs as $blog)
                    <x-templates.blog url="blogs/{{ $blog->url }}" img="{{ $blog->image }}" alt=""
                        date="{{ $blog->created_at }}" title="{{ $blog->title }}" text="{{ $blog->preview_text }}" />
                @endforeach
            </div>
        </div>

        {{ $blogs->onEachSide(1)->links('components.paginator.index') }}

        <x-blocks.offer />

    </main>
@endsection
