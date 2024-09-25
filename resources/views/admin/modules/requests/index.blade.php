@extends('admin.app')
@section('content')
    <h1>Заявки</h1>

    <div class="filter" style="margin-bottom: 30px;">

        <h2>Фильтр</h2>
        <form method="get" class="filter_form">
            <span>Название:</span>
            <input type="text" name="search" placeholder="Введите имя или номер" value="{{ $_GET['search'] ?? '' }}">
            <button type="submit" class="blue_btn">Поиск</button>
        </form>

    </div>

    <table class="request-table table_dark">

        <thead>
            <tr>
                <th>№</th>
                <th>Информация о клиенте:</th>
                <th>Информация о туре:</th>
                <th>Сообщение:</th>
                <th></th>
            </tr>
        </thead>

        <tbody>

            @foreach ($objects as $object)
                <tr>
                    <td>{{ $object->id }}</td>
                    <td>
                        <div
                            style="display: flex;
                                flex-direction: column;
                                row-gap: 5px">
                            <span><b>Дата подачи заявки:</b> {{ $object->created_at }}</span>
                            <span><b>Имя:</b> {{ $object->name }}</span>
                            <span><b>Телефон:</b> {{ $object->phone }}</span>
                            <span><b>Email:</b> {{ $object->email }}</span>
                        </div>
                    </td>
                    <td>
                        <div
                            style="display: flex;
                                flex-direction: column;
                                row-gap: 5px">
                            <span><b>Город вылета:</b> {{ $object->from }}</span>
                            <span><b>Страна тура:</b> {{ $object->to }} </span>
                            <span><b>Даты вылета:</b> {{ $object->range }} </span>
                            <span><b>Продолжительность тура:</b> {{ $object->range }} </span>
                            <span><b>Предположительный бюджет:</b> {{ $object->budget }} </span>
                            <span><b>Продолжительность тура:</b> {{ $object->nights }} </span>
                            <span><b>Кол-во туристов:</b> {{ $object->tourist_count }} </span>
                        </div>
                    </td>
                    <td>{{ $object->description ?? '' }}</td>
                    <td><a href="?delete={{ $object->id }}" class="admin_delete" title="Удалить"></a></td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
