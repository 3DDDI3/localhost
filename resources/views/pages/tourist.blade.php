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
            <h3 class="agency-documents__header">Документы:</h3>
            <div class="agency-documents__list">
                @foreach ($object->attachedFiles()->get() as $file)
                    <x-templates.document :title="$file->file()->first()->description">
                        @if (preg_match('/(.docx)|(.doc)|(.pdf)"/', $file->file()->first()->url))
                            <x-icons.pdf />
                        @else
                            <x-icons.word />
                        @endif
                    </x-templates.document>
                @endforeach

                {{-- <x-templates.document title="Агентский договор">
                    <x-icons.pdf />
                </x-templates.document>
                <x-templates.document
                    title="Решение о финансовом обеспечении туроператора (Турпомощь) с
          01.04.24 по 01.04.25">
                    <x-icons.word /></x-templates.document> --}}
            </div>
        </div>

        <x-blocks.offer />

    </main>
@endsection
