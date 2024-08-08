<div class="popular-tours__tour-card">
    <div class="popular-tours-tour-card__headding popular-tours-tour-card__headding_dafault">
        <span class="popular-tours-tour-card__type">{{ $attributes->get('type') }}</span>
        <img src="{{ $attributes->get('img') }}" alt="{{ $attributes->get('alt') }}">
        <p class="popular-tours-tour-card__name">{{ $attributes->get('info') }}</p>
        <div class="popular-tours-tour-card__wrapper"></div>
    </div>
    <div class="popular-tours-tour-card__descriprtion">
        <h3 class="popular-tours-tour-card-descriprtion__title">{{ $attributes->get('title') }}</h3>
        <p class="popular-tours-tour-card-descriprtion__text">
            {{ $attributes->get('text') }}
        </p>
        <div class="popular-tours-tour-card__info">
            <div class="popular-tours-tour-card__cost">
                <span class="popular-tours-tour-card-cost__title">{{ $attributes->get('nights') }}</span>
                <span class="popular-tours-tour-card-cost__subtitle">{{ $attributes->get('price') }}</span>
            </div>
            <button data-href="{{ $attributes->get('url') }}" class="popular-tours-tour-card__button">Подробнее</button>
        </div>
    </div>
</div>
