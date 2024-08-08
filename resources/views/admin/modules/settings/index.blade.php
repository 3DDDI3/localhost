@extends('admin.app')
@section('content')
    <h1>Настройки</h1>

    <div class='admin_edit_block'>

        <form method="post" class="admin_edit-form" enctype="multipart/form-data">
            @csrf

            @include('admin.includes.input', [
                'label' => 'Телефон:',
                'name' => 'phone2',
                'value' => $object->phone2 ?? '',
            ])
            @include('admin.includes.input', [
                'label' => 'Email:',
                'name' => 'email',
                'value' => $object->email ?? '',
            ])
            @include('admin.includes.input', [
                'label' => 'Адрес:',
                'name' => 'address',
                'value' => $object->address ?? '',
            ])


            @include('admin.includes.submit')

        </form>
    </div>
@endsection
