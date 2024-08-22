<div class="services-vacation-type__info">
    <div class="services-vacation-type__list">
        @foreach ($attributes->get('types') as $type)
            <a href="tours/?type=1" class="services-vacation-type__item">
                <span class="services-vacation-type__name">{{ $type->type }}</span>
                <span class="services-vacation-type__counter">{{ $type->toursCount() }}</span>
            </a>
        @endforeach
    </div>
</div>
