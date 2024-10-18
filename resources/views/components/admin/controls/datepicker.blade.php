@php
    $style = implode(
        ', ',
        array_map(
            function ($key, $value) {
                return "$key: $value";
            },
            array_keys($style),
            $style,
        ),
    );
    $value = (string) $value;
@endphp

<div class="datepicker" style="{{ isset($style) ? $style : null }}">
    <span class="datepicker__title">{{ isset($title) ? $title : null }}</span>
    <input class="datepicker__input" data-value="{{ $value }}" type="text" readonly
        name="{{ isset($name) ? $name : null }}" id="{{ isset($id) ? $id : null }}"
        placeholder="{{ isset($placeholder) ? $placeholder : null }}" />
</div>
