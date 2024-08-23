<section class="popular-tours__slider splide">
    <div class="splide__track">
        <ul class="splide__list">
            @foreach ($attributes->get('tourStatuses') as $tourStatus)
                @php
                    $tourStatus = $tourStatus->tour();
                @endphp
                <li class="splide__slide">
                    <x-templates.tour type="хит" alt="" class="Популярные туры"
                        img="/storage/{{ $tourStatus->preview_image }}" info="{{ $tourStatus->preview_title }}"
                        title="{{ $tourStatus->preview_header }}" text="{{ $tourStatus->preview_text }}"
                        nights="{{ $tourStatus->preview_nights }}" price="{{ $tourStatus->preview_price }}"
                        url="tours/{{ $tourStatus->url }}" />
                </li>
            @endforeach

        </ul>
    </div>
</section>
