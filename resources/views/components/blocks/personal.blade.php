<div class="company-experts-table-row">
    <div class="company-experts-fio-block">
        <h3 class="company-experts__fio">{{ $attributes->get('name') }}</h3>
        <p class="company-experts__description">
            {!! html_entity_decode($attributes->get('description')) !!}
        </p>
    </div>
    <div class="company-experts-mail-block">
        <a href="mailto:{{ $attributes->get('email') }}" class="company-experts__mail">{{ $attributes->get('email') }}</a>
    </div>
</div>
