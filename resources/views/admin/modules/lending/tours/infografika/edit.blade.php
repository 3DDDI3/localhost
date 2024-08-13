@extends('admin.app')
@section('content')
    @include('admin.includes.h1')

    <div class="admin_edit_block">
        @include('admin.includes.back')

        <form method="post" enctype="multipart/form-data" class="admin_edit-form">
            @csrf
            @include('admin.includes.input', [
                'label' => 'Заголовок:',
                'name' => 'title',
                'value' => $object->title ?? '',
            ])
            @include('admin.includes.input', [
                'label' => 'Текст превью:',
                'name' => 'preview_text',
                'value' => $object->preview_text ?? '',
            ])

            @include('admin.includes.textbox', [
                'label' => 'текст:',
                'name' => 'text',
                'value' => $object->text ?? '',
            ])

            @include('admin.includes.select', [
                'label' => 'Странна:',
                'name' => 'select',
                'select' => $countries,
            ])

            {!! \App\Helpers\GenerateForm::makeImage('Изображение', 'path', $object, '/storage/' . $object->path, false, empty($object->path)?null:"title" ) !!}

            {!! \App\Helpers\GenerateForm::makeGallery('title', 'galary', $images, '/upload') !!}

            @include('admin.includes.submit')
        </form>
    </div>
@endsection
