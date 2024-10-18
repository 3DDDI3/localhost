<div class="services-country-tour__info">
    <div class="service_country__sublist">
        @foreach ($attributes->get('countries') as $country)
            <div class="service_country-sublist__row">
                <a href="tours?country_id={{ $country->id }}" class="service_country-sublist__item">
                    <span class="service_country-sublist__name">{{ $country->name }}</span>
                    <span class="service_country-sublist__counter">{{ $country->tours->count() }}</span>
                </a>
            </div>
        @endforeach
    </div>
</div>
