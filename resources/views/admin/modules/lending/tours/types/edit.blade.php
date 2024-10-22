@extends('admin.app')
@section('content')
    @include('admin.includes.h1')

    <div class="admin_edit_block">
        @include('admin.includes.back')

        <form method="post" enctype="multipart/form-data" class="admin_edit-form">
            @csrf

            @include('admin.includes.input', [
                'label' => 'Тип:',
                'name' => 'type',
                'value' => $object->type ?? '',
            ])

            {!! \App\Helpers\GenerateForm::makeImage(
                'Фоновое изображение на странице каталога<br>размер 1920х494',
                'image',
                $object,
                '/storage/' . $object->image,
                false,
                empty($object->image) ? null : 'title',
            ) !!}

            @include('admin.includes.submit')
        </form>
    </div>
@endsection
