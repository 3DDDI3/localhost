<div class="tour-country-type-block" data-href="{{ $attributes->get('url') }}">
    <img src="{{ $attributes->get('icon') }}" alt="{{ $attributes->get('iconAlt') }}"
        class="tour-country-type-block__image">
    <div class="tour-country-type-block__description">
        <span class="tour-country-type-block__title">{{ $attributes->get('title') }}</span>
        <span class="tour-country-type-block__subtitle">{{ $attributes->get('subtitle') }}</span>
    </div>
    <img class="tour-country-type-block__bg-image" src="{{ $attributes->get('image') }}"
        alt="{{ $attributes->get('imageAlt') }}">
</div>
