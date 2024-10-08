<x-Admin.NavBar title="Основное" url="lending" all="{{ isset($all) && $all }}">

    {{-- @include('admin.includes.menu.item', [
        'route' => 'admin.lending.text.index',
        'name' => 'текст',
        'data' => 'text',
    ])

    @include('admin.includes.menu.item', [
        'route' => 'admin.lending.slider.index',
        'name' => 'категории',
        'data' => 'slider',
    ])

    @include('admin.includes.menu.item', ['route' => 'admin.lending.slider2.index', 'name' => 'слайдер 2'])
    @include('admin.includes.menu.item', [
        'route' => 'admin.lending.specs.index',
        'name' => 'характеристики',
        'data' => 'specs',
    ]) --}}

    @include('admin.includes.menu.item', [
        'route' => 'admin.lending.pages.index',
        'name' => 'страницы',
        'data' => 'pages',
    ])

    @include('admin.includes.menu.item', [
        'route' => 'admin.lending.blogs.index',
        'name' => 'блог',
        'data' => 'blogs',
    ])

    @include('admin.includes.menu.item', [
        'route' => 'admin.lending.news.index',
        'name' => 'новости',
        'data' => 'news',
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
            'route' => 'admin.lending.tours.types.index',
            'name' => 'Типы',
            'data' => 'types',
        ])

        @include('admin.includes.menu.item', [
            'route' => 'admin.lending.tours.status.index',
            'name' => 'Статусы',
            'data' => 'status',
        ])

        @include('admin.includes.menu.item', [
            'route' => 'admin.lending.tours.countries.index',
            'name' => 'Страны',
            'data' => 'countries',
        ])

        @include('admin.includes.menu.item', [
            'route' => 'admin.lending.tours.programs.index',
            'name' => 'Расписание программ',
            'data' => 'programs',
        ])

    </x-Admin.NavBar>

    <x-Admin.NavBar title="Слайдеры" url="lending"
        style="border-bottom: unset !important; margin: 10px 0 0 0!important; padding-bottom:0 !important"
        all="{{ isset($all) && $all }}">

        @include('admin.includes.menu.item', [
            'route' => 'admin.lending.sliders.main.index',
            'name' => 'Главная',
            'data' => 'main',
        ])

    </x-Admin.NavBar>

</x-Admin.NavBar>

<x-Admin.NavBar title="Служебное" url="services" all="{{ isset($all) && $all }}">
    {{-- @include('admin.includes.menu.item', ['route' => 'admin.service.countries.index', 'name' => 'Страны']); --}}
    @include('admin.includes.menu.item', [
        'route' => 'admin.services.infografika.index',
        'name' => 'Инфографика',
        'data' => 'infografika',
    ])

    @include('admin.includes.menu.item', [
        'route' => 'admin.services.export.index',
        'name' => 'Экспорт туров из Самотура',
        'data' => 'export',
    ])

    @include('admin.includes.menu.item', [
        'route' => 'admin.services.personal.index',
        'name' => 'Персонал',
        'data' => 'personal',
    ])

    @include('admin.includes.menu.item', [
        'route' => 'admin.services.documents.index',
        'name' => 'Документы',
        'data' => 'documents',
    ])

    @include('admin.includes.menu.item', [
        'route' => 'admin.services.advs.index',
        'name' => 'Реклама',
        'data' => 'advs',
    ])

</x-Admin.NavBar>

<x-Admin.NavBar title="Пользователи" url="users" all="{{ isset($all) && $all }}">
    {{-- @include('admin.includes.menu.item', [
        'route' => 'admin.users.users.index',
        'name' => 'Пользователи',
        'data' => 'users',
    ])
    @include('admin.includes.menu.item', [
        'route' => 'admin.users.classes.index',
        'name' => 'Классы пользователей',
        'data' => 'classes',
    ]) --}}
    @include('admin.includes.menu.item', [
        'route' => 'admin.users.agents.index',
        'name' => 'Агенты',
        'data' => 'agents',
    ])
    {{-- @include('admin.includes.menu.item', [
        'route' => 'admin.users.admin_event_logs.index',
        'name' => 'Журнал событий',
    ]) --}}

</x-Admin.NavBar>

@include('admin.includes.menu.item', [
    'route' => 'admin.mailling.index',
    'name' => 'Рассылка',
    'data' => 'mailling',
])

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
