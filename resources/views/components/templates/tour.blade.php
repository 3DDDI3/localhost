@if (!empty($attributes->get('class')))
    <div class="popular-tours__tour-card">
        <div class="popular-tours-tour-card__headding popular-tours-tour-card__headding_dafault">
            <span class="popular-tours-tour-card__type">{{ $attributes->get('type') }}</span>
            <img src="{{ $attributes->get('img') }}" alt="{{ $attributes->get('alt') }}">
            <p class="popular-tours-tour-card__name">{!! $attributes->get('info') !!}</p>
            <div class="popular-tours-tour-card__wrapper"></div>
        </div>
        <div class="popular-tours-tour-card__descriprtion">
            <h3 class="popular-tours-tour-card-descriprtion__title">{!! $attributes->get('title') !!}</h3>
            <div class="popular-tours-tour-card-descriprtion__text">
                {!! html_entity_decode($attributes->get('text')) !!}
            </div>
            <div class="popular-tours-tour-card__info">
                <div class="popular-tours-tour-card__cost">
                    <span class="popular-tours-tour-card-cost__title">{{ $attributes->get('nights') }}</span>
                    <span class="popular-tours-tour-card-cost__subtitle">{{ $attributes->get('price') }}</span>
                </div>
                <button data-href="{{ $attributes->get('url') }}"
                    class="popular-tours-tour-card__button">Подробнее</button>
            </div>
        </div>
    </div>
@else
    <div class="tour-card">
        <div class="tour-card__headding tour-card__headding_dafault tour-card__headding_defaut">
            <span class="tour-card__type tour-card__type">{{ $attributes->get('type') }}</span>
            <img src="{{ $attributes->get('img') }}" class="card__image" alt="{{ $attributes->get('alt') }}">
            <p class="tour-card__name card__name">{!! $attributes->get('info') !!}</p>
            <div class="tour-card__wrapper card__wrapper"></div>
        </div>
        <div class="tour-card__descriprtion card__description">
            <h3 class="tour-card-descriprtion__title card-descriprtion__title">{!! $attributes->get('title') !!}</h3>
            <div class="tour-card-descriprtion__text card-descriprtion__text">
                {!! html_entity_decode($attributes->get('text')) !!}
            </div>
            <div class="tour-card__info card__info">
                <div class="tour-card__cost card__cost">
                    <span class="tour-card-cost__title card-cost__title">{{ $attributes->get('nights') }}</span>
                    <span class="tour-card-cost__subtitle card-cost__subtitle">{{ $attributes->get('price') }}</span>
                </div>
                <button
                    class="tour-card__button card__button"data-href="{{ $attributes->get('url') }}">Подробнее</button>
            </div>
        </div>
    </div>
@endif
