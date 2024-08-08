<section class="section section2" id="s2">
    <div class="section__content">
        <div class="container">
            <h2>{!! $texts[1]->title !!}</h2>
            {{-- <div class="section2__wrapper"> --}}

            <section class="section2__splide splide ms"
                data-splide='{
                        "perPage":3,
                        "gap":"40px",
                        "pagination":false,
                        "autoplay":true,
                        "interval":10000,
                        "speed":2000,
                        "pauseOnFocus":false,
                        "pauseOnHover":false,
                        "breakpoints": {
                               "1600": {  "perPage": 2  },
                               "900": { "perPage": 1  }
                        }
                        }'>
                <div class="splide__arrows splide__arrows--ltr hidden">
                    <button id="ps" class="splide__arrow splide__arrow--prev" type="button"
                        aria-label="Previous slide" aria-controls="splide01-track">
                        <img src="/images/arrow-right-slider.png" alt="" />
                    </button>
                    <button id="ns" class="splide__arrow splide__arrow--next" type="button"
                        aria-label="Next slide" aria-controls="splide01-track">
                        <img src="/images/arrow-right-slider.png" alt="" />
                    </button>
                </div>
                <div class="splide__track">
                    <ul class="splide__list">



                        @foreach ($slider as $item)
                            @if (!$item->hide)
                                <li class="splide__slide">
                                    <div class="section2__item">
                                        <div class="item__img">
                                            <img src="{{ asset('/storage/' . $item->image) }}"" alt="" />
                                        </div>
                                        <div class="item__title"> {!! $item->title !!}</div>
                                        <div class="item__text"> {!! $item->text !!}</div>
                                    </div>
                                </li>
                            @endif
                        @endforeach

                    </ul>
                </div>

            </section>

            {{-- </div> --}}
        </div>
    </div>
</section>
