<form class="modal__form feedback">
    <div class="modal-form__fields feedback__fields">
        <div class="feedback__row">
            <span class="feedback-row__title">Контакты для связи:</span>
            <div class="feedback__columns">
                <input type="text" required name="name" class="feedback__text modal-form__text input__text"
                    placeholder="Имя">
                <input type="text" required name="phone" class="feedback__text modal-form__text input__text"
                    placeholder="Телефон">
                <input type="email" required name="email" class="feedback__text modal-form__text input__email"
                    placeholder="Email">
            </div>
        </div>
        <div class="feedback__row">
            <span class="feedback-row__title">Информация о туре:</span>
            <div class="feedback__columns">
                <div class="feedback__datas">
                    <label for="feedback-data">
                        <div class="search-tour__dates">
                            <span class="search-tour-dates__title">Удобные даты вылета</span>
                            <span class="search-tour-dates__subtitle">{{ date('d.m') }} - {{ date('d.m') }}</span>
                        </div>
                        <input id="feedback-data" class="search-tour-dates__datapicker" type="text" name="date"
                            value="" />
                    </label>
                </div>
                <div class="feedback__from combobox">
                    <div class="combobox__header">
                        <div class="combobox-header-block">
                            <span class="combobox-header__title">Город вылета</span>
                            <span class="combobox-header__subtitle combobox-header__subtitle_invisible"></span>
                        </div>
                        <svg class="combobox-header__icon" width="16" height="16" viewBox="0 0 16 16"
                            fill="none" xmlns="http://www.w3.org/2000/svg">
                            <g clip-path="url(#clip0_85_85)">
                                <path
                                    d="M7.78671 12.1108C7.60462 12.1 7.43154 12.017 7.29731 11.8761L1.18945 5.43842C1.11393 5.35843 1.05293 5.26224 1.00997 5.15533C0.966998 5.04843 0.942897 4.93291 0.93903 4.81537C0.935163 4.69783 0.951603 4.58057 0.987426 4.47029C1.02325 4.36001 1.07775 4.25887 1.1478 4.17263C1.21786 4.0864 1.30211 4.01677 1.39574 3.96772C1.48937 3.91866 1.59054 3.89114 1.69348 3.88674C1.79642 3.88233 1.89911 3.90112 1.99569 3.94203C2.09227 3.98294 2.18085 4.04517 2.25637 4.12517L7.83077 9.99841L13.4052 4.12517C13.4807 4.04517 13.5693 3.98294 13.6658 3.94203C13.7624 3.90112 13.8651 3.88233 13.968 3.88674C14.071 3.89115 14.1722 3.91866 14.2658 3.96772C14.3594 4.01677 14.4437 4.0864 14.5137 4.17263C14.5838 4.25887 14.6383 4.36001 14.6741 4.47029C14.7099 4.58058 14.7264 4.69783 14.7225 4.81537C14.7186 4.93291 14.6945 5.04843 14.6516 5.15533C14.6086 5.26224 14.5476 5.35843 14.4721 5.43842L8.36422 11.8761C8.28672 11.9575 8.19564 12.0203 8.09642 12.0606C7.99719 12.1009 7.89185 12.118 7.78671 12.1108Z"
                                    fill="#B2B2B2" />
                            </g>
                            <defs>
                                <clipPath id="clip0_85_85">
                                    <rect width="16" height="16" fill="white"
                                        transform="matrix(-4.37114e-08 1 1 4.37114e-08 0 0)" />
                                </clipPath>
                            </defs>
                        </svg>
                    </div>
                    <div class="combobox__list combobox__list_invisible">
                        @foreach ($attributes->get('cities') as $city)
                            <span data-id="{{ $city->id_city }}" class="combobox__item">
                                {{ $city->city }}
                            </span>
                        @endforeach
                    </div>
                </div>
                <input type="text" class="feedback__text modal-form__text input__email" name="feedback__nights"
                    placeholder="Продолжительность тура в днях">
                <div class="feedback__to combobox">
                    <div class="combobox__header">
                        <div class="combobox-header-block">
                            <span class="combobox-header__title">Страна для тура</span>
                            <span class="combobox-header__subtitle combobox-header__subtitle_invisible"></span>
                        </div>
                        <svg class="combobox-header__icon" width="16" height="16" viewBox="0 0 16 16"
                            fill="none" xmlns="http://www.w3.org/2000/svg">
                            <g clip-path="url(#clip0_85_85)">
                                <path
                                    d="M7.78671 12.1108C7.60462 12.1 7.43154 12.017 7.29731 11.8761L1.18945 5.43842C1.11393 5.35843 1.05293 5.26224 1.00997 5.15533C0.966998 5.04843 0.942897 4.93291 0.93903 4.81537C0.935163 4.69783 0.951603 4.58057 0.987426 4.47029C1.02325 4.36001 1.07775 4.25887 1.1478 4.17263C1.21786 4.0864 1.30211 4.01677 1.39574 3.96772C1.48937 3.91866 1.59054 3.89114 1.69348 3.88674C1.79642 3.88233 1.89911 3.90112 1.99569 3.94203C2.09227 3.98294 2.18085 4.04517 2.25637 4.12517L7.83077 9.99841L13.4052 4.12517C13.4807 4.04517 13.5693 3.98294 13.6658 3.94203C13.7624 3.90112 13.8651 3.88233 13.968 3.88674C14.071 3.89115 14.1722 3.91866 14.2658 3.96772C14.3594 4.01677 14.4437 4.0864 14.5137 4.17263C14.5838 4.25887 14.6383 4.36001 14.6741 4.47029C14.7099 4.58058 14.7264 4.69783 14.7225 4.81537C14.7186 4.93291 14.6945 5.04843 14.6516 5.15533C14.6086 5.26224 14.5476 5.35843 14.4721 5.43842L8.36422 11.8761C8.28672 11.9575 8.19564 12.0203 8.09642 12.0606C7.99719 12.1009 7.89185 12.118 7.78671 12.1108Z"
                                    fill="#B2B2B2" />
                            </g>
                            <defs>
                                <clipPath id="clip0_85_85">
                                    <rect width="16" height="16" fill="white"
                                        transform="matrix(-4.37114e-08 1 1 4.37114e-08 0 0)" />
                                </clipPath>
                            </defs>
                        </svg>
                    </div>
                    <div class="combobox__list combobox__list_invisible">
                        @foreach ($attributes->get('countries') as $country)
                            <span data-id="{{ $country->id_country }}" class="combobox__item">
                                {{ $country->country }}
                            </span>
                        @endforeach
                    </div>
                </div>
                <input type="text" required name="cost" required
                    class="feedback__text modal-form__text input__email" placeholder="Предполагаемый бюджет">
                <input type="text" required name="touristCount" class="feedback__text modal-form__text input__email"
                    placeholder="Кол-во туристов">

            </div>
        </div>
        <div class="feedback__row">
            <span class="feedback-row__title">Особые пожелания</span>
            <textarea placeholder="Укажите даты отдыха, страну, город и любые другие ваши пожелания" required name="textarea"
                class="feedback__textarea modal-form__textarea input__textarea"></textarea>
        </div>
    </div>
    <div class="modal__aggrees">
        <div class="modal-aggrees__description">
            <label for="law-aggree1">
                <input type="checkbox" id="law-aggree1">
                <span class="modal-aggrees__checkbox"></span>
            </label> <span class="modal-aggrees__text">Я соглашаюсь на обработку моих персональных данных в
                соответствии с требованиями Федерального закона РФ от 27 июля 2006 года № 152-ФЗ «О
                персональных данных»
            </span>
        </div>
        <button type="submit" class="feedback__button">Подберите мне тур</button>
    </div>
</form>
