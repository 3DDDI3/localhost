@extends('layouts.default')

@section('head')
    <link rel="stylesheet" href="{{ asset('/css/blog.css') }}?v={{ sha1_file(public_path() . '/css/blog.css') }}">
@endsection

@section('content')
    <main>

        <div class="blog-headding">
            <x-templates.bread-crumbs :data="$breadcrumbs" />
            <div class="blog__headding page-headding">
                <span class="blog-headding__title page-headding__title">Акция «Кешбэк за туры по России» в самом
                    разгаре!</span>
                <span class="blog-headding__date">{{ $blog->created_at }}</span>
            </div>
        </div>

        <div class="blog-detailed-block">
            @empty($blog->image)
                <img src="/storage/{{ $blog->image }}" alt="" class="blog-detailed-block__image">
            @endempty
            <div>{!! $blog->text !!}</div>
        </div>

        <x-blocks.news :news="$otherBlogs" title="Другие" subtitle="блоги" />

        <x-blocks.offer />

    </main>
@endsection
