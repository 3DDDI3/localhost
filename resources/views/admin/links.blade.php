<x-Admin.NavBar title="Лендинг" url="lending" all="{{ isset($all) && $all }}">
    @include('admin.includes.menu.item', ['route' => 'admin.lending.text.index', 'name' => 'текст'])
    @include('admin.includes.menu.item', ['route' => 'admin.lending.slider.index', 'name' => 'категории'])
    {{-- @include('admin.includes.menu.item', ['route' => 'admin.lending.slider2.index', 'name' => 'слайдер 2']) --}}
    @include('admin.includes.menu.item', [
        'route' => 'admin.lending.specs.index',
        'name' => 'характеристики',
    ])


</x-Admin.NavBar>
<x-Admin.NavBar title="Пользователи" url="users" all="{{ isset($all) && $all }}">
    @include('admin.includes.menu.item', ['route' => 'admin.users.users.index', 'name' => 'Пользователи'])
    @include('admin.includes.menu.item', [
        'route' => 'admin.users.classes.index',
        'name' => 'Классы пользователей',
    ])
    {{-- @include('admin.includes.menu.item', [
        'route' => 'admin.users.admin_event_logs.index',
        'name' => 'Журнал событий',
    ]) --}}

</x-Admin.NavBar>

@include('admin.includes.menu.item', ['route' => 'admin.requests.index', 'name' => 'Заявки'])


{{-- @include('admin.includes.menu.item', ['route' => 'admin.page.index', 'name' => 'Страницы']) --}}
{{-- @include('admin.includes.menu.item', ['route' => 'admin.seo.index', 'name' => 'SEO']) --}}
@include('admin.includes.menu.item', ['route' => 'admin.settings.index', 'name' => 'Настройки'])
