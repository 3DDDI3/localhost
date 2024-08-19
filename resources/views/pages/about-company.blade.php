@extends('layouts.default')

@section('head')
    <link rel="stylesheet" href="{{ asset('/css/about.css') }}?v={{ sha1_file(public_path() . '/css/about.css') }}">
@endsection

@section('content')
    <main>
        <div class="page-header">
            <x-templates.bread-crumbs :data="$breadcrumbs" />

            <h1 class="page-title">{{ $object->title }}</h1>
        </div>

        <x-sliders.gallery slider_class="personal__slider">
            <li class="splide__slide">
                <img src="{{ asset('images/card1.png') }}" alt="">
            </li>
            <li class="splide__slide">
                <img src="{{ asset('images/card2.png') }}" alt="">
            </li>
            <li class="splide__slide">
                <img src="{{ asset('images/card1.png') }}" alt="">
            </li>
            <li class="splide__slide">
                <img src="{{ asset('images/card2.png') }}" alt="">
            </li>
        </x-sliders.gallery>

        <div class="company-background__text"><span>Туристическая фирма «Меркурий»</span> - лицензированный
            многопрофильный туроператор зарегистрированная в Едином Федеральном реестре туроператоров под номером РТО
            017558
        </div>
        <div class="company-decription">
            <div class="company-description-wrapper">
                <div class="company-description__text">
                    {!! html_entity_decode($object->about_text_1) !!}
                </div>
            </div>
            <div class="company-description-wrapper">
                <div class="company-description__text">
                    {!! html_entity_decode($object->about_text_2) !!}
                </div>
            </div>
        </div>
        <div class="company-statistics">
            @foreach ($object->infografika()->orderBy('rating', 'desc')->get() as $infografika)
                <x-blocks.infografika img="/storage/{{ $infografika->icon }}" alt=""
                    text="{{ $infografika->title }}" />
            @endforeach
        </div>
        <div class="company-experts">
            <h2 class="company-experts__headding">Контакты экспертов и отделов:</h2>
            <div class="company-experts-table">
                <div class="company-experts-table__headding">
                    <span class="company-experts-table__header">ФИО</span>
                    <span class="company-experts-table__header">Почта</span>
                </div>
                @foreach ($personal as $person)
                    <x-blocks.personal name="{{ $person->name }}" description="{{ $person->description }}"
                        email="{{ $person->email }}" />
                @endforeach
            </div>
        </div>

        <x-blocks.offer />

    </main>
@endsection
