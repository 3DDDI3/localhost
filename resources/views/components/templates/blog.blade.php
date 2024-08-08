<div class="blog__card" data-href="{{ $attributes->get('url') }}">
    <img src="{{ $attributes->get('img') }}" alt="{{ $attributes->get('alt') }}" class="blog__img">
    <span class="blog__date">{{ $attributes->get('date') }}</span>
    <p class="blog__title">{{ $attributes->get('title') }}</p>
    <p class="blog__text">{{ $attributes->get('text') }}</p>
</div>
