<x-Admin.NavBar title="Лендинг" url="lending" all="{{ isset($all) && $all }}">

    @include('admin.includes.menu.item', [
        'route' => 'admin.lending.text.index',
        'name' => 'текст',
        'data' => 'text',
    ])

    @include('admin.includes.menu.item', [
        'route' => 'admin.lending.slider.index',
        'name' => 'категории',
        'data' => 'slider',
    ])

    {{-- @include('admin.includes.menu.item', ['route' => 'admin.lending.slider2.index', 'name' => 'слайдер 2']) --}}
    @include('admin.includes.menu.item', [
        'route' => 'admin.lending.specs.index',
        'name' => 'характеристики',
        'data' => 'specs',
    ])


    <x-Admin.NavBar title="Туры" url="lending"
        style="border-bottom: unset !important; margin: 10px 0 0 0!important; padding-bottom:0 !important"
        all="{{ isset($all) && $all }}">

        @include('admin.includes.menu.item', [
            'route' => 'admin.lending.tours.index',
            'name' => 'страница',
            'data' => 'tours',
        ])

        @include('admin.includes.menu.item', [
            'route' => 'admin.lending.tours.countries.index',
            'name' => 'Страны',
            'data' => 'countries',
        ])

        @include('admin.includes.menu.item', [
            'route' => 'admin.lending.tours.infografika.index',
            'name' => 'Инфографика',
            'data' => 'infografika',
        ])

        @include('admin.includes.menu.item', [
            'route' => 'admin.lending.tours.programms.index',
            'name' => 'Расписание программ',
            'data' => 'programms',
        ])

    </x-Admin.NavBar>

</x-Admin.NavBar>

{{-- <x-Admin.NavBar title="Служебное" url="users" all="{{ isset($all) && $all }}">
    @include('admin.includes.menu.item', ['route' => 'admin.service.countries.index', 'name' => 'Страны']);
</x-Admin.NavBar> --}}

<x-Admin.NavBar title="Пользователи" url="users" all="{{ isset($all) && $all }}">
    @include('admin.includes.menu.item', [
        'route' => 'admin.users.users.index',
        'name' => 'Пользователи',
        'data' => 'users',
    ])
    @include('admin.includes.menu.item', [
        'route' => 'admin.users.classes.index',
        'name' => 'Классы пользователей',
        'data' => 'classes',
    ])
    {{-- @include('admin.includes.menu.item', [
        'route' => 'admin.users.admin_event_logs.index',
        'name' => 'Журнал событий',
    ]) --}}

</x-Admin.NavBar>

@include('admin.includes.menu.item', [
    'route' => 'admin.requests.index',
    'name' => 'Заявки',
    'data' => 'requests',
])


{{-- @include('admin.includes.menu.item', ['route' => 'admin.page.index', 'name' => 'Страницы']) --}}
{{-- @include('admin.includes.menu.item', ['route' => 'admin.seo.index', 'name' => 'SEO']) --}}
@include('admin.includes.menu.item', [
    'route' => 'admin.settings.index',
    'name' => 'Настройки',
    'data' => 'settings',
])
