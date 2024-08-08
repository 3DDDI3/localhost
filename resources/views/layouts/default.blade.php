<!doctype html>
<html lang="ru">

<head>
    @include('includes.head')
</head>

<body>
    @csrf
    @include('includes.header')


    @yield('content')

    @include('includes.footer')


    @include ('includes.scripts')

    @yield('custom_script')

</body>

</html>
