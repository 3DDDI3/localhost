<div class="services-vacation-type__info">
    <div class="services-vacation-type__list">
        @foreach ($attributes->get('types') as $type)
            @if ($type->toursCount() > 0)
                <a href="tours?type_id={{ $type->id }}" class="services-vacation-type__item">
                    <span class="services-vacation-type__name">{{ $type->type }}</span>
                    <span class="services-vacation-type__counter">{{ $type->toursCount() }}</span>
                </a>
            @endif
        @endforeach
    </div>
</div>