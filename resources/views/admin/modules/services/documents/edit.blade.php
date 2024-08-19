@extends('admin.app')
@section('content')
    @include('admin.includes.h1')

    <div class="admin_edit_block">
        @include('admin.includes.back')

        <form method="post" enctype="multipart/form-data" class="admin_edit-form">
            @csrf

            @include('admin.includes.textbox', [
                'label' => 'Описание:',
                'name' => 'description',
                'value' => $object->description ?? '',
            ])

            {!! \App\Helpers\GenerateForm::makeFile('Документ', 'file', $doc->all()[0], '/storage/files') !!}

            {{-- @dd($pages->all()[0]->id) --}}

            {{-- @dd($selectedPages->all(), $pages->all()) --}}

            @include('admin.includes.submit')
        </form>
    </div>
@endsection
