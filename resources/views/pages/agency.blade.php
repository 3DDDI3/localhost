@extends('layouts.default')

@section('head')
    <link rel="stylesheet" href="{{ asset('/css/agency.css') }}?v={{ sha1_file(public_path() . '/css/agency.css') }}">
@endsection

@section('content')
    <main>

        <div class="agency-headding">
            <x-templates.bread-crumbs :data="$breadcrumbs" />
            <h1 class="agency-headding__title">Агентствам</h1>
        </div>

        <div class="agency-desctiption-useful-links">
            <div class="agency-description">
                <h1 class="agency-description__header">Сведения о туроператоре:</h1>
                <p class="agency-description__text">В соответствии с требованиями федерального закона «О внесении изменений в
                    Федеральный закон» об основах туристской деятельности в Российской Федерации», вступившего в действие 1
                    июня 2007 г., ООО «Туристическая фирма «Меркурий», ОГРН 1047833025635,
                    внесена в единый федеральный реестр туроператоров под номером 017558, серия РТ0.</p>
                <h2 class="agency-description__title">Ответственность Туроператора застрахована в страховой компании:</h2>
                <h3 class="agency-description__subtitle">Международный выездной туризм</h3>
                <p class="agency-description__text">На основании решения Ассоциации "Объединение туроператоров всфере
                    выездного туризма "ТУРПОМОЩЬ" № 317 от 07.03.2024 г. длясферы "выездной туризм" финансовое обеспечение
                    не требуется до01.04.2025г.</p>
                <h3 class="agency-description__subtitle">Внутренний туризм, международный въездной</h3>
                <p class="agency-description__text">Общество с Ограниченной Ответственностью «Русское Страховое
                    Общество«Евроинс». Адрес (место нахождения) организации: Смоленская обл, г Смоленск, улГлинки, д
                    7Документ:№ № ЛСП02/23/ГО-ТУР№ 2671163 от 06/12/2023Срок действия финансового
                    обеспечения: с с 29/01/2024 по 28/01/2025 г.Размер финансового обеспечения: 500000 р.</p>
                <p class="agency-description__text">
                    ООО «Туристическая фирма «МЕРКУРИЙ» в <a href="" class="agency-description-text_link">Едином
                        федеральном реестре на сайте Ростуризма</a> Желаем Вам успешных продаж и надеемся на плодотворное
                    сотрудничество!
                </p>
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
