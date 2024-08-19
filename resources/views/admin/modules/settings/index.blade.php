@extends('admin.app')
@section('content')
    <h1>Настройки</h1>

    <div class='admin_edit_block'>

        <form method="post" class="admin_edit-form" enctype="multipart/form-data">
            @csrf

            @include('admin.includes.input', [
                'label' => 'Телефоны: (разделитель запятая)',
                'name' => 'phones',
                'value' => $object->phones ?? '',
            ])

            @include('admin.includes.input', [
                'label' => 'Адрес:',
                'name' => 'address',
                'value' => $object->address ?? '',
            ])

            @include('admin.includes.input', [
                'label' => 'Email:',
                'name' => 'email',
                'value' => $object->email ?? '',
            ])

            @include('admin.includes.input', [
                'label' => 'Whatsapp:',
                'name' => 'whatsapp',
                'value' => $object->whatsapp ?? '',
            ])

            @include('admin.includes.input', [
                'label' => 'Telegram:',
                'name' => 'telegram',
                'value' => $object->telegram ?? '',
            ])

            @include('admin.includes.input', [
                'label' => 'Vk:',
                'name' => 'vk',
                'value' => $object->vk ?? '',
            ])


            @include('admin.includes.submit')

        </form>
    </div>
@endsection
