<div class="tour-day-programm__item">
    <div class="tour-day-programm__text-description">
        <div class="tour-day-programm__text-block">
            <span class="tour-day-programm__day">{{ $attributes->get('day') }}</span>
            <span class="tour-day-programm__title">{{ $attributes->get('title') }}</span>
        </div>
        <svg width="26" height="12" viewBox="0 0 26 12" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path
                d="M13.3654 11.3816C13.0352 11.3672 12.7213 11.2562 12.4778 11.0678L1.40049 2.4595C1.26351 2.35254 1.15289 2.22392 1.07497 2.08097C0.99704 1.93802 0.953329 1.78355 0.946316 1.62638C0.939302 1.46921 0.96912 1.31242 1.03409 1.16495C1.09906 1.01748 1.19789 0.882234 1.32495 0.766925C1.45201 0.651617 1.60481 0.558507 1.77462 0.492913C1.94442 0.427318 2.12791 0.390524 2.3146 0.38463C2.50129 0.378737 2.68754 0.40386 2.8627 0.458564C3.03786 0.513269 3.19851 0.596484 3.33547 0.703458L13.4453 8.55703L23.5552 0.703458C23.6921 0.596484 23.8527 0.513268 24.0279 0.458564C24.2031 0.403859 24.3893 0.378736 24.576 0.384629C24.7627 0.390523 24.9462 0.427317 25.116 0.492912C25.2858 0.558506 25.4386 0.651616 25.5657 0.766924C25.6927 0.882233 25.7916 1.01748 25.8565 1.16495C25.9215 1.31241 25.9513 1.46921 25.9443 1.62638C25.9373 1.78355 25.8936 1.93802 25.8156 2.08097C25.7377 2.22392 25.6271 2.35254 25.4901 2.4595L14.4128 11.0678C14.2722 11.1767 14.1071 11.2606 13.9271 11.3146C13.7471 11.3685 13.5561 11.3913 13.3654 11.3816Z"
                fill="#4509A8" />
        </svg>
    </div>
    <div class="tour-day-programm__description">
        <div class="tour-day-programm__text">
            {!! html_entity_decode($attributes->get('text')) !!}
        </div>
        {{ $slot }}
    </div>
</div>