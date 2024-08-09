<div class="agency-document">
    <div class="agency-document-info">
        {{ $slot }}
        <p class="agency-document-info__title">{{ $attributes->get('title') }}</p>
    </div>
    <button class="agency-document__download">Скачать</button>
</div>
