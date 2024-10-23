@extends('admin.app')
@section('content')
    @include('admin.includes.h1')

    <div class="admin_edit_block">
        @include('admin.includes.back')

        <form method="post" enctype="multipart/form-data" class="admin_edit-form">
            @csrf

            @include('admin.includes.input', [
                'label' => 'Ссылка:',
                'name' => 'url',
                'value' => $object->url ?? '',
            ])

            {!! \App\Helpers\GenerateForm::makeImage(
                'Картинка текста<br>размер не более 1000х494',
                'text',
                $object,
                '/storage/' . $object->text,
                false,
                empty($object->text) ? null : 'title',
            ) !!}

            {!! \App\Helpers\GenerateForm::makeImage(
                'Фоновое изображение<br>размер 1920х779',
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
