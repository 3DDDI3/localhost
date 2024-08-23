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
                'label' => 'Подзаголовок:',
                'name' => 'subtitle',
                'value' => $object->subtitle ?? '',
            ])

            @include('admin.includes.select', [
                'label' => 'Статус:',
                'name' => 'status',
                'select' => $status,
                'select_head' => $statusHead,
            ])

            @include('admin.includes.select', [
                'label' => 'Страна:',
                'name' => 'select',
                'select' => $countries,
                'select_head' => $countryHead,
            ])

            {!! \App\Helpers\GenerateForm::makeMultipleSelect(
                'Типы тура',
                'tour_types',
                $tourTypes->all(),
                $selectedTourTypes->all(),
            ) !!}

            @include('admin.includes.textbox', [
                'label' => 'Описание тура:',
                'name' => 'description',
                'value' => $object->description ?? '',
            ])

            @include('admin.includes.input', [
                'label' => 'Заголовок превью:',
                'name' => 'preview_title',
                'value' => $object->preview_title ?? '',
            ])

            @include('admin.includes.input', [
                'label' => 'Подзаголовок превью:',
                'name' => 'preview_header',
                'value' => $object->preview_header ?? '',
            ])

            @include('admin.includes.textbox', [
                'label' => 'Текст превью:',
                'name' => 'preview_text',
                'value' => $object->preview_text ?? '',
            ])

            @include('admin.includes.input', [
                'label' => 'Цена тура на превью:',
                'name' => 'preview_price',
                'value' => $object->preview_price ?? '',
            ])

            @include('admin.includes.input', [
                'label' => 'Кол-во ночей на превью:',
                'name' => 'preview_nights',
                'value' => $object->preview_nights ?? '',
            ])

            {!! \App\Helpers\GenerateForm::makeImage(
                'Фоновое изображение<br>размер 500x312',
                'preview_image',
                $object,
                '/storage/' . $object->preview_image,
                false,
                empty($object->preview_image) ? null : 'title',
            ) !!}

            @include('admin.includes.textbox', [
                'label' => 'Описание стоимости тура:',
                'name' => 'tour_cost_info',
                'value' => $object->tour_cost_info ?? '',
            ])

            @include('admin.includes.textbox', [
                'label' => 'Описание дополнительной оплаты:',
                'name' => 'tour_additional_cost',
                'value' => $object->tour_additional_cost ?? '',
            ])

            @include('admin.includes.textbox', [
                'label' => 'Подробная информация при бронировании тура',
                'name' => 'agreement_info',
                'value' => $object->agreement_info ?? '',
            ])

            @php
                $background_image = empty($object->background_image) ? '' : $object->background_image;
            @endphp

            {!! \App\Helpers\GenerateForm::makeImage(
                'Фоновое изображение<br>размер 1348x494',
                'background_image',
                $object,
                '/storage/' . $background_image,
                false,
                empty($object->background_image) ? null : 'title',
            ) !!}

            {!! \App\Helpers\GenerateForm::makeGallery(
                'Галерея',
                'galary',
                $object->gallery()->get()->all(),
                '/images/tours/gallary',
            ) !!}

            @include('admin.includes.submit')
        </form>
    </div>
@endsection
