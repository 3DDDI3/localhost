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
                'label' => 'Текст:',
                'name' => 'text',
                'value' => $object->text ?? '',
            ])
            {{-- @include('admin.includes.input', [
                'label' => 'Факт 1:',
                'name' => 'fact1',
                'value' => $object->fact1 ?? '',
            ])
            @include('admin.includes.input', [
                'label' => 'Факт 2:',
                'name' => 'fact2',
                'value' => $object->fact2 ?? '',
            ])

            @include('admin.includes.input', [
                'label' => 'Факт 3:',
                'name' => 'fact3',
                'value' => $object->fact3 ?? '',
            ]) --}}

            {{-- @include('admin.includes.textbox', [
                'label' => 'Описание:',
                'name' => 'text',
                'value' => $object->text ?? '',
            ]) --}}
            {{-- {!! \App\Helpers\GenerateForm::makeImage('Превью', 'preview', $object, '/storage/' . $object->preview) !!} --}}
            {!! \App\Helpers\GenerateForm::makeImage('Изображение', 'image', $object, '/storage/' . $object->image) !!}
            {{-- @include('admin.includes.input', [
                'label' => 'Текст под картинкой:',
                'name' => 'text2',
                'value' => $object->text2 ?? '',
            ]) --}}
            @include('admin.includes.submit')
        </form>
    </div>
@endsection
