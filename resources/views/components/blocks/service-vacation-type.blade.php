<div class="services-vacation-type__info">
    <div class="services-vacation-type__list">
        @for ($i = 0; $i < $attributes->get('types')->count(); $i++)
            <a href="tours?type_id={{ $attributes->get('types')[$i]->id }}" class="services-vacation-type__item">
                <span class="services-vacation-type__name">{{ $attributes->get('types')[$i]->type }}</span>
                <span class="services-vacation-type__counter">{{ $attributes->get('types')[$i]->tours->count() }}</span>
            </a>
        @endfor
    </div>
</div>
