@extends('layouts.default')

@section('head')
    <link rel="stylesheet" href="{{ asset('/css/agency.css') }}?v={{ sha1_file(public_path() . '/css/agency.css') }}">
@endsection

@section('content')
    <main>

        <div class="agency-headding">
            <x-templates.bread-crumbs :data="$breadcrumbs" />
            <h1 class="agency-headding__title">{{ $object->title }}</h1>
        </div>

        <div class="agency-desctiption-useful-links">
            <div class="agency-description">
                {!! html_entity_decode($object->text) !!}
            </div>

            @if ($object->attachedPages()->count() > 0)
                <div class="agency-useful-links">
                    <h1 class="agency-useful-links__header">Полезное: </h1>
                    <x-blocks.attached-page :pages="$object->attachedPages()->orderBy('rating', 'desc')->get()" />
                </div>
            @endif

        </div>
        <div class="agency-documents">
            @if ($object->attachedFiles()->count() > 0)
                <h3 class="agency-documents__header">Документы:</h3>
                <div class="agency-documents__list">
                    @foreach ($object->attachedFiles()->get() as $file)
                        <x-templates.document path="{{ $file->file()->first()->path }}" :title="$file->file()->first()?->name">
                            @if (preg_match('/(.docx)|(.doc)|(.pdf)"/', $file->file()->first()?->url))
                                <x-icons.pdf />
                            @else
                                <x-icons.word />
                            @endif
                        </x-templates.document>
                    @endforeach
                </div>
            @endif
        </div>

        <x-blocks.offer />

    </main>
@endsection
