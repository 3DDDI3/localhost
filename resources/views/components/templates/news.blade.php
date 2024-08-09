<div class="news__card" data-href="{{ $attributes->get('url') }}">
    <img src="{{ $attributes->get('img') }}" alt="{{ $attributes->get('alt') }}" class="news__img">
    <span class="news__date">{{ $attributes->get('date') }}</span>
    <p class="news__text">{{ $attributes->get('title') }}</p>
</div>
