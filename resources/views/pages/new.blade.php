@extends('layouts.default')

@section('head')
    <link rel="stylesheet" href="{{ asset('/css/blog.css') }}?v={{ sha1_file(public_path() . '/css/blog.css') }}">
@endsection

@section('content')
    <main>

        <div class="blog-headding">
            <x-templates.bread-crumbs :data="$breadcrumbs" />
            <div class="blog__headding page-headding">
                <span class="blog-headding__title page-headding__title">{{ $news->title }}</span>
                <span class="blog-headding__date">{{ $news->created_at }}</span>
            </div>
        </div>

        <div class="blog-detailed-block">
            @if (!empty($news->image))
                <img src="/storage/{{ $news->image }}" alt="" class="blog-detailed-block__image">
            @endif
            <div>{!! $news->text !!}</div>
        </div>

        <x-blocks.news title="Другие" subtitle="новости" :news="$otherNews" />

        <x-blocks.offer />

    </main>
@endsection
