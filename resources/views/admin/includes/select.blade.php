<div class="input_block">
    <span>{{ $label ?? '' }}</span>

    @if (!empty($select))
        <select name='{{ $name ?? '' }}' class='chosen {{ $class ?? '' }}' {{ isset($required) ? 'required' : '' }}>
            <option value='0'>{{ !empty($select_head) ? $select_head : 'Не выбрано' }}</option>
            @foreach ($select as $option)
                @if ($option->name != $select_head)
                    <option value='{{ (!empty($value_name) ? $option->$value_name : null) ?? ($option->id ?? 0) }}'
                        {{ ($value ?? '') == ((!empty($value_name) ? $option->$value_name : null) ?? $option->id) ? 'selected' : '' }}>
                        {{ (isset($name_name) ? $option->$name_name : null) ?? ($option->name ?? '') }}
                    </option>
                @endif
            @endforeach
        </select>
    @endif
</div>
