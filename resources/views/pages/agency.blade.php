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
            <div class="agency-useful-links">
                <h1 class="agency-useful-links__header">Полезное: </h1>
                <x-blocks.attached-page :pages="$object->attachedPages()->orderBy('rating', 'desc')->get()" />
            </div>
        </div>
        <div class="agency-documents">
            @if ($object->attachedFiles()->count() > 0)
                <h3 class="agency-documents__header">Документы:</h3>
                <div class="agency-documents__list">
                    @foreach ($object->attachedFiles()->get() as $file)
                        <x-templates.document path="{{ $file->file->path }}" :title="$file->file->name">
                            @switch(explode('.', $file->file->path)[1])
                                @case('pdf')
                                    <x-icons.pdf />
                                @break

                                @case('doc')
                                    <x-icons.word />
                                @break

                                @case('docx')
                                    <x-icons.word />
                                @break

                                @case('xls')
                                    <x-icons.excel />
                                @break

                                @case('xlsx')
                                    <x-icons.excel />
                                @break

                                @default
                            @endswitch
                        </x-templates.document>
                    @endforeach
                </div>
            @endif
        </div>

        <x-blocks.offer />

    </main>
@endsection
