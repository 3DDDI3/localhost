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
            {{-- @include('admin.includes.input', [
                'label' => 'Текст:',
                'name' => 'text',
                'value' => $object->text ?? '',
            ]) --}}
            {{-- @include('admin.includes.textbox', [
                'label' => 'Описание:',
                'name' => 'text',
                'value' => $object->text ?? '',
            ]) --}}
            {{-- {!! \App\Helpers\GenerateForm::makeImage('Изображение', 'image', $object, '/storage/' . $object->image) !!} --}}

            @include('admin.includes.submit')
        </form>
    </div>
@endsection
