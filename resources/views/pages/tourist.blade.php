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
                <ul class="agency-useful-links__menu menu">
                    <li class="agency-useful-links__item menu__item">
                        <a href="./documents.html" class="agency-useful-links__link menu__link">Страхование</a>
                    </li>
                    <li class="agency-useful-links__item menu__item">
                        <a href="./tours.html" class="agency-useful-links__link menu__link">Рекламные туры</a>
                    </li>
                    <li class="agency-useful-links__item menu__item">
                        <a href="./documents.html" class="agency-useful-links__link menu__link">Сотрудничество</a>
                    </li>
                    <li class="agency-useful-links__item menu__item">
                        <a href="./documents.html" class="agency-useful-links__link menu__link">Документы</a>
                    </li>
                    <li class="agency-useful-links__item menu__item">
                        <a href="./documents.html" class="agency-useful-links__link menu__link">Способы оплаты</a>
                    </li>
                    <li class="agency-useful-links__item menu__item">
                        <a href="./documents.html" class="agency-useful-links__link menu__link">Партнерская программа</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="agency-documents">
            <h3 class="agency-documents__header">Документы:</h3>
            <div class="agency-documents__list">
                <x-templates.document title="Агентский догово">
                    <x-icons.pdf />
                </x-templates.document>
                <x-templates.document
                    title="Решение о финансовом обеспечении туроператора (Турпомощь) с
          01.04.24 по 01.04.25">
                    <x-icons.word /></x-templates.document>
            </div>
        </div>

        <x-blocks.offer />

    </main>
@endsection
