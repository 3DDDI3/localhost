<div class="services-vacation-type__info">
    <div class="services-vacation-type__list">
        @for ($i = 0; $i < $attributes->get('types')->count(); $i++)
            <a href="tours?type_id={{ $attributes->get('types')[$i]->id }}" class="services-vacation-type__item">
                <span class="services-vacation-type__name">{{ $attributes->get('types')[$i]->type }}</span>
                <span class="services-vacation-type__counter">{{ $attributes->get('types')[$i]->tours->count() }}</span>
            </a>
        @endfor
        @foreach ($attributes->get('statuses') as $status)
            @switch($status->name)
                @case('Ранее бронирование')
                    <a href="/tours?earlier_booking=1" class="services-vacation-type__item">
                        <span class="services-vacation-type__name">{{ $status->name }}</span>
                        <span class="services-vacation-type__counter">{{ $status->tourStatus->count() }}</span>
                    </a>
                @break

                @case('Спецпредложение')
                    <a href="/tours?special_offers=1" class="services-vacation-type__item">
                        <span class="services-vacation-type__name">{{ $status->name }}</span>
                        <span class="services-vacation-type__counter">{{ $status->tourStatus->count() }}</span>
                    </a>
                @break
            @endswitch
        @endforeach
    </div>
</div>
