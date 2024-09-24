<form class="modal__form mailling">
    <div class="modal-form__fields mailling__fields">
        <div class="person__combobox combobox">
            <div class="combobox__header">
                <div class="combobox-header-block">
                    <span class="combobox-header__title">Кто вы?</span>
                    <span class="combobox-header__subtitle combobox-header__subtitle_invisible">Кто вы?</span>
                </div>
                <svg class="combobox-header__icon" width="16" height="16" viewBox="0 0 16 16" fill="none"
                    xmlns="http://www.w3.org/2000/svg">
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
                <span data-id="1" class="combobox__item">Частное лицо</span>
                <span data-id="2" class="combobox__item">Туристическое агентство</span>
            </div>
        </div>
        <input type="text" required name="name" class="mailling__text modal-form__text input__text"
            placeholder="Ваше имя">
        <input type="text" required name="city" class="mailling__text modal-form__text input__text"
            placeholder="Город">
    </div>
    <div class="modal__aggrees">
        <label for="law-aggree2">
            <input type="checkbox" id="law-aggree2">
            <span class="modal-aggrees__checkbox"></span>
        </label> <span class="modal-aggrees__text">Я соглашаюсь на обработку моих персональных данных в
            соответствии с требованиями Федерального закона РФ от 27 июля 2006 года № 152-ФЗ «О
            персональных данных»
        </span>
    </div>
    <div class="modal__buttons mailling__buttons">
        <button class="mailling__button">Подписаться</button>
    </div>
</form>
