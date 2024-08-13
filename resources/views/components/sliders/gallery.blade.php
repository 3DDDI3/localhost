<section
    class="tour-gallary__slider{{ empty($attributes->get('slider_number')) ? '' : $attributes->get('slider_number') }} splide">
    @if ($attributes->get('header'))
        <h2 class="tour-gallary__title">{{ $attributes->get('header') }}</h2>
    @endif
    <div class="splide__track">
        <ul class="splide__list">
            <li class="splide__slide">
                <x-templates.gallery-item>
                    <div class="tour-gallary-block">
                        <img src="{{ asset('images/tour/1.png') }}" class="tour-gallary-block__image" alt="">
                        <span class="tour-gallary-block__title">Дели</span>
                    </div>
                </x-templates.gallery-item>
            </li>
            <li class="splide__slide">
                <x-templates.gallery-item>
                    <div class="tour-gallary-block">
                        <img src="{{ asset('images/tour/1.png') }}" class="tour-gallary-block__image" alt="">
                        <span class="tour-gallary-block__title">Агра</span>
                    </div>
                </x-templates.gallery-item>
            </li>
            <li class="splide__slide">
                <x-templates.gallery-item>
                    <div class="tour-gallary-block">
                        <img src="{{ asset('images/tour/1.png') }}" class="tour-gallary-block__image" alt="">
                        <span class="tour-gallary-block__title">Джайпур</span>
                    </div>
                </x-templates.gallery-item>
            </li>
        </ul>
    </div>
</section>
