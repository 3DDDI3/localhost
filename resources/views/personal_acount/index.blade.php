@extends('layouts.default')

@section('head')
    <link rel="stylesheet" href="{{ asset('/css/pa.css') }}?v={{ sha1_file(public_path() . '/css/pa.css') }}">
@endsection

@section('content')
    <main>

        @if (!$agent->isConfirmed && !$agent->isActive)
            <div class="pa__notification">
                <img src="{{ asset('images/pa/image.png') }}" alt="" class="pa-notification__image">
                <div class="pa-notification__description">
                    <h1 class="pa-notification__title">Спасибо за регистрацию!</h1>
                    <div class="pa-notification__text">Ваша заявка на рассмотрении
                        Мы пришлем подтверждение на электронную почту <span>aaa@mail.ru</span></div>
                </div>
            </div>
        @else
            <div class="pa__header">
                <div class="pa-header">
                    <x-templates.bread-crumbs :data="$breadcrumbs" />
                    <h1 class="pa-title">Личный кабинет</h1>
                </div>
            </div>

            <div class="pa-logo-contact">
                <div class="pa__contacts">
                    <h1 class="pa-contact__name">ООО “Компания”</h1>
                    <div class="pa-contact__wrapper">
                        <div class="pa-contact__block">
                            <span class="pa-contanct-block__title">Телефон:</span>
                            <span class="pa-contanct-block__text">+7 (812) 702-77-85</span>
                        </div>
                        <div class="pa-contact__block">
                            <span class="pa-contanct-block__title">Почта</span>
                            <span class="pa-contanct-block__text">aaa@mail.ru</span>
                        </div>
                    </div>
                </div>
                <div class="pa__logo">
                    <img src="{{ asset('images/pa/logo.png') }}" alt="" class="pa-logo__icon">
                </div>
            </div>

            <div class="pa-address-desctipion">
                <div class="pa__addres"></div>
                <div class="pa__description">
                    <img src="{{ asset('images/pa/bg.png') }}" alt="" class="pa-description__image">
                    <div class="pa-description__text">Теперь вы можете скачивать программу тура с вашими данными.
                        Если вы не хотите скачивать программу тура с вашими данными, необходимо выйти из аккаунта. Для
                        изменения
                        данных свяжитесь с нами:</div>
                    <div class="pa-description-info">
                        <div class="pa-description-phone">
                            <span class="pa-description-phone__title">Телефон:</span>
                            <a href="tel:+78127027785" class="pa-description-phone__info">+7 (812) 702-77-85</a>
                        </div>
                        <div class="pa-description-email">
                            <span class="pa-description-email__title">Почта:</span>
                            <a href="mailto:aaa@mail.ru" class="pa-description-email__info">aaa@mail.ru</a>
                        </div>
                    </div>
                </div>
            </div>

            <button class="pa-exit-button">Выйти из аккаунта</button>
        @endif

    </main>
@endsection