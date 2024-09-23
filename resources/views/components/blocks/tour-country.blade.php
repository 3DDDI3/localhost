<div class="services-country-tour__info">
    <div class="services-country__list">
        @foreach ($attributes->get('countries') as $country)
            @if ($country->tours->count() > 0)
                <a href="tours?country_id={{ $country->id }}" class="services-country__item">
                    <span class="services-country__name">{{ $country->name }}</span>
                    <span class="services-country__counter">{{ $country->tours->count() }}</span>
                </a>
            @endif
        @endforeach
        @foreach ($attributes->get('countries') as $country)
            @if ($country->tours->count() > 0)
                <a href="tours?country_id={{ $country->id }}" class="services-country__item">
                    <span class="services-country__name">{{ $country->name }}</span>
                    <span class="services-country__counter">{{ $country->tours->count() }}</span>
                </a>
            @endif
        @endforeach
    </div>
    <div class="service_country__sublist service_country__sublist_hidden">
        @foreach ($attributes->get('countries') as $country)
            @if ($country->tours->count() > 0)
                <a href="tours?country_id={{ $country->id }}" class="service_country-sublist__item">
                    <span class="service_country-sublist__name">{{ $country->name }}</span>
                    <span class="service_country-sublist__counter">{{ $country->tours->count() }}</span>
                </a>
            @endif
        @endforeach
    </div>
</div>
