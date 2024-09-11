<!doctype html>
<html lang="ru">

<head>
    @hasSection('head')
        <meta charset="UTF-8">
        <meta name="viewport"
            content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        {!! $seo->buildGenerates() !!}

        <script src="/js/jquery-3.7.1.js?v={{ sha1_file(public_path('/js/jquery-3.7.1.js')) }}"></script>
        <script src="/js/main.js?v={{ sha1_file(public_path('/js/main.js')) }}"></script>
        <link rel="stylesheet" href="{{ asset('/css/main.css') }}?v={{ sha1_file(public_path() . '/css/main.css') }}">
        <link rel="stylesheet" href="{{ asset('/css/modals.css') }}?v={{ sha1_file(public_path() . '/css/modals.css') }}">
        <link rel="shortcut icon" href="/public/favicon.ico" type="image/x-icon">

        @yield('head')
    @else
        @include('includes.head')
    @endif
</head>

<body>
    @csrf

    @include('includes.header')

    @yield('content')

    <x-blocks.modal-window id="registration" class="registration-modal" title="Регистрация">
        <x-blocks.registration-form />
    </x-blocks.modal-window>

    <x-blocks.modal-window id="enter" class="enter-modal" title="Войти">
        <x-blocks.enter-form />
    </x-blocks.modal-window>

    <x-blocks.modal-window id="notification" class="notification-modal" title="">
        <x-blocks.notification title="Спасибо за регистрацию!" email="aaa@mail.ru"
            text="Мы пришлем подтверждение на электронную почту" subtitle="Ваша заявка на рассмотрении" />
    </x-blocks.modal-window>

    <x-blocks.modal-window id="notification-small" class="notification-modal" title="">
        <x-blocks.notification text="Вы подписались на рассылку" />
    </x-blocks.modal-window>

    <x-blocks.modal-window id="chose-user" class="notification-modal" exit="false">
        <x-blocks.chosen-form />
    </x-blocks.modal-window>

    <x-blocks.modal-window id="reset-password" class="reset-password-modal" title="Сброс пароля">
        <x-blocks.reset-password />
    </x-blocks.modal-window>

    <x-blocks.modal-window id="feedback" class="feedback-modal" title="Подберем лучший тур"
        subtitle="по вашим параметрам">
        <x-blocks.feedback />
    </x-blocks.modal-window>


    @include('includes.footer')


    @include ('includes.scripts')

    @yield('custom_script')

</body>

</html>
