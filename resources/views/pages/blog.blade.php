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
                <span class="blog-headding__date">11.04.2024</span>
            </div>
        </div>

        <div class="blog-detailed-block">
            <img src="{{ asset('images/blog/moscow.png') }}" alt="" class="blog-detailed-block__image">
            <h3 class="blog-detailed-block__title">Примите участие в акции туристический кешбэк</h3>
            <p class="blog-detailed-block__text">Спешите отправиться в путешествие по нашей стране с очень хорошей
                скидкой!
            </p>
            <h3 class="blog-detailed-block__title">Скидка за туры 20%</h3>
            <p class="blog-detailed-block__text">предоставляется при единовременной оплате онлайн с помощью карты МИР,
                зарегистрированной в программе. Оплатить туристические услуги необходимо до 30.04.2022 включительно, а
                ваша
                поездка должна состояться до 30.06.2022. Максимальная сумма к
                возврату - 20 000 рублей. Кешбэк возможен не только за пакетные туры, но и за отдельные услуги, такие
                как
                проживание в отеле, санатории или путешествие-круиз. Важно, чтобы длительность вашей поездки была дольше
                2-х
                ночей включительно.Кроме
                того, есть возможность получить возврат за детский лагерь! В этом случае кешбэк составит 50% стоимости
                путевки, но также не более 20 000 рублей. Приобрести детскую путевку нужно до 31.08.2022.</p>
            <h3 class="blog-detailed-block__title">Выбирайте любой регион России</h3>
            <p class="blog-detailed-block__text">- Байкал, Казань, Карелия, Кавказ, Калининград, Владивосток, Камчатка,
                Сочи, Алтай, Крым и многие-многие другие! А мы поможем в организации вашего лучшего путешествия.</p>
            <a href="" class="blog-detailed-block__search-tours">Поиск туров с кешбэк 20%</a>
        </div>

        <x-blocks.news title="Другие" subtitle="блоги" />

        <x-blocks.offer />

    </main>
@endsection


</main>
@endsection
