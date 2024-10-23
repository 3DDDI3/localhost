<section class="sliders splide">
    <div class="splide__track">
        <ul class="splide__list">
            @foreach ($attributes->get('sliders') as $slider)
                @if (!empty($slider->text))
                    <li class="splide__slide">
                        <div class="slider__block">
                            <a href="{{ $slider->url }}">
                                <img src="/storage/{{ $slider->text }}" alt="">
                            </a>
                        </div>
                    </li>
                @endif
            @endforeach
        </ul>
    </div>
</section>

<section class="subSliders splide">
    <div class="splide__track">
        <ul class="splide__list">
            @foreach ($attributes->get('sliders') as $slider)
                @if (!empty($slider->image))
                    <li class="splide__slide">
                        <div class="slider__block">
                            <img src="/storage/{{ $slider->image }}" alt="">
                        </div>
                    </li>
                @endif
            @endforeach
        </ul>
    </div>
</section>
