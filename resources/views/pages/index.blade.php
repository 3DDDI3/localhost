@extends('layouts.default')

@section('content')
    <main>

        <x-sliders.main-slider :$sliders />

        <div id="search-tour" class="search-tours">
            <div class="search-tours__wrapper">
                <section class="search-tour-buttons__slider splide">
                    <div class="splide__track">
                        <ul class="splide__list search-tour__buttons">
                            <li class="splide__slide">
                                <button class="search-tour__button search-tour__button_active">Туры</button>
                            </li>
                            <li class="splide__slide">
                                <button data-href="https://samo.mercury-europe.ru/tickets"
                                    class="search-tour__button search-tour__button_inactive">Авиабилеты</button>
                            </li>
                            <li class="splide__slide">
                                <button data-href="https://samo.mercury-europe.ru/search_hotel"
                                    class="search-tour__button search-tour__button_inactive">Отели</button>
                            </li>
                            {{-- <li class="splide__slide">
                                <button class="search-tour__button search-tour__button_inactive">FIT
                                    запрос
                                </button>
                            </li> --}}
                        </ul>
                    </div>
                </section>
                <form class="search-tour__form">
                    <div class="search-tour-form__wrapper">
                        <div class="search-tour__directions">
                            <div class="search-tour__from combobox">
                                <div class="combobox__header">
                                    <div class="combobox-header-block">
                                        <span class="combobox-header__title">Откуда</span>
                                        <span
                                            class="combobox-header__subtitle combobox-header__subtitle_invisible">Москва</span>
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
                                    @foreach ($cities as $city)
                                        <span data-id="{{ $city->id }}" class="combobox__item">
                                            {{ $city->name }}
                                        </span>
                                    @endforeach
                                </div>
                            </div>
                            <div class="search-tour__to combobox">
                                <div class="combobox__header">
                                    <div class="combobox-header-block">
                                        <span class="combobox-header__title">Куда</span>
                                        <span
                                            class="combobox-header__subtitle combobox-header__subtitle_invisible">Москва</span>
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
                                </div>
                            </div>
                        </div>
                        <div class="search-tour__dates-info">
                            <div class="search-tour-dates__wrapper">
                                <label for="datapicker">
                                    <div class="search-tour__dates">
                                        <span class="search-tour-dates__title">Дата вылета</span>
                                        <span class="search-tour-dates__subtitle">02.20 - 02.04</span>
                                    </div>
                                    <input id="datapicker" class="search-tour-dates__datapicker" type="text"
                                        name="datefilter" value="" />
                                    <svg class="search-tour-date__icon" width="23" height="23" viewBox="0 0 23 23"
                                        fill="none">
                                        <g opacity="0.3">
                                            <path
                                                d="M5.75033 21.0833H17.2503C18.2667 21.0822 19.2411 20.678 19.9597 19.9594C20.6784 19.2407 21.0826 18.2663 21.0837 17.25V7.66663C21.0826 6.65029 20.6784 5.67589 19.9597 4.95723C19.2411 4.23857 18.2667 3.83436 17.2503 3.83329H16.292V2.87496C16.292 2.62079 16.191 2.37704 16.0113 2.19732C15.8316 2.01759 15.5878 1.91663 15.3337 1.91663C15.0795 1.91663 14.8357 2.01759 14.656 2.19732C14.4763 2.37704 14.3753 2.62079 14.3753 2.87496V3.83329H8.62533V2.87496C8.62533 2.62079 8.52436 2.37704 8.34464 2.19732C8.16491 2.01759 7.92116 1.91663 7.66699 1.91663C7.41283 1.91663 7.16907 2.01759 6.98935 2.19732C6.80963 2.37704 6.70866 2.62079 6.70866 2.87496V3.83329H5.75033C4.73401 3.83443 3.75965 4.23867 3.04101 4.95731C2.32237 5.67595 1.91813 6.65031 1.91699 7.66663V17.25C1.91813 18.2663 2.32237 19.2406 3.04101 19.9593C3.75965 20.6779 4.73401 21.0822 5.75033 21.0833ZM3.83366 10.5416H19.167V17.25C19.1664 17.7581 18.9643 18.2453 18.605 18.6046C18.2457 18.9639 17.7585 19.166 17.2503 19.1666H5.75033C5.24215 19.1661 4.75493 18.964 4.3956 18.6047C4.03626 18.2454 3.83417 17.7581 3.83366 17.25V10.5416Z"
                                                fill="black" />
                                        </g>
                                    </svg>
                                </label>
                                <div class="search-tour__nights">
                                    <span class="search-tour-nights__title">Ночей</span>
                                    <span
                                        class="search-tour-nights__subtitle search-tour-nights__subtitle_invisible">5</span>
                                </div>
                            </div>

                        </div>
                        <div class="search-tour__people-count combobox">
                            <div class="combobox__header">
                                <div class="combobox-header-block">
                                    <span class="combobox-header__title">Туристы</span>
                                    <span
                                        class="combobox-header__subtitle combobox-header__subtitle_invisible">Москва</span>
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
                                <span data-id="1" class="combobox__item">
                                    1 человек
                                </span>
                                <span data-id="2" class="combobox__item">
                                    2 человека
                                </span>
                                <span data-id="3" class="combobox__item">
                                    3 человека
                                </span>
                                <span data-id="4" class="combobox__item">
                                    4 человека
                                </span>
                            </div>
                        </div>
                        <button type="submit">Подобрать тур</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="services">
            <div class="services__country-tours">
                <img src="{{ asset('images/country-tour.png') }}" alt="Туры по стране">
                <div class="services-country-tour__blurred-block"></div>
                <div class="services-country-tour">
                    <h3 class="services-country-tour__title">Туры по стране</h3>
                    <x-blocks.tour-country :$countries />
                    <button data-href="/tours?country_id=*" class="services-country-tour__all-button">Просмотреть все
                        страны
                        <svg width="17" height="17" viewBox="0 0 17 17" fill="inherit"
                            xmlns="http://www.w3.org/2000/svg">
                            <g clip-path="url(#clip0_85_95)">
                                <path
                                    d="M12.2491 8.27822C12.2414 8.46047 12.1613 8.63493 12.0227 8.77153L5.68944 14.9875C5.61074 15.0644 5.51559 15.127 5.40943 15.1718C5.30327 15.2166 5.18818 15.2426 5.07072 15.2485C4.95327 15.2543 4.83575 15.2399 4.72487 15.2059C4.614 15.172 4.51195 15.1192 4.42454 15.0506C4.33713 14.982 4.26609 14.899 4.21545 14.8062C4.16482 14.7134 4.13559 14.6127 4.12944 14.5099C4.12329 14.407 4.14034 14.304 4.17961 14.2068C4.21888 14.1095 4.2796 14.0199 4.35831 13.943L10.1363 8.26995L4.16948 2.79582C4.08822 2.72167 4.02449 2.63417 3.98195 2.53829C3.93941 2.44242 3.91889 2.34006 3.92155 2.23706C3.92421 2.13406 3.95001 2.03244 3.99747 1.93799C4.04494 1.84355 4.11313 1.75813 4.19816 1.68662C4.2832 1.61511 4.3834 1.55891 4.49306 1.52122C4.60272 1.48354 4.71969 1.46511 4.83727 1.46698C4.95486 1.46886 5.07077 1.49101 5.17839 1.53216C5.286 1.57331 5.38321 1.63265 5.46447 1.70682L12.0046 7.70477C12.0874 7.78087 12.1517 7.87088 12.1937 7.96941C12.2357 8.06794 12.2545 8.17298 12.2491 8.27822Z"
                                    fill="inherit" />
                            </g>
                            <defs>
                                <clipPath id="clip0_85_95">
                                    <rect width="16" height="16" fill="white"
                                        transform="matrix(0.999857 -0.0169369 -0.0169369 -0.999857 0.271484 16.2686)" />
                                </clipPath>
                            </defs>
                        </svg>
                    </button>
                </div>
            </div>
            <div class="services__vacation-type">
                <img src="{{ asset('images/vacation-type.png') }}" alt="">
                <div class="services__vacation-type__blurred-block"></div>
                <div class="services-vacation-type">
                    <h3 class="services-vacation-type__title">Тур по типу отдыха</h3>
                    <x-blocks.service-vacation-type :$types />
                    <button data-href="tours?type_id=*" class="services-country-tour__all-button">
                        Просмотреть все типы
                        <svg width="17" height="17" viewBox="0 0 17 17" fill="inherit"
                            xmlns="http://www.w3.org/2000/svg">
                            <g clip-path="url(#clip0_85_100)">
                                <path
                                    d="M12.2481 8.27846C12.2404 8.46071 12.1603 8.63517 12.0217 8.77177L5.68846 14.9878C5.60976 15.0647 5.51462 15.1273 5.40846 15.172C5.3023 15.2168 5.1872 15.2429 5.06975 15.2487C4.95229 15.2546 4.83477 15.2401 4.7239 15.2062C4.61302 15.1722 4.51097 15.1195 4.42356 15.0509C4.33616 14.9823 4.26511 14.8992 4.21448 14.8064C4.16384 14.7137 4.13462 14.613 4.12847 14.5101C4.12232 14.4073 4.13936 14.3043 4.17863 14.207C4.2179 14.1097 4.27862 14.0201 4.35733 13.9433L10.1353 8.27019L4.16851 2.79607C4.08724 2.72191 4.02352 2.63441 3.98098 2.53854C3.93843 2.44266 3.91791 2.3403 3.92057 2.2373C3.92324 2.1343 3.94904 2.03268 3.9965 1.93824C4.04396 1.84379 4.11215 1.75837 4.19719 1.68687C4.28222 1.61536 4.38243 1.55915 4.49209 1.52147C4.60175 1.48378 4.71871 1.46535 4.8363 1.46723C4.95389 1.4691 5.0698 1.49125 5.17741 1.5324C5.28503 1.57355 5.38224 1.6329 5.46349 1.70706L12.0037 7.70502C12.0864 7.78112 12.1507 7.87112 12.1927 7.96965C12.2347 8.06818 12.2536 8.17322 12.2481 8.27846Z"
                                    fill="inherit" />
                            </g>
                            <defs>
                                <clipPath id="clip0_85_100">
                                    <rect width="16" height="16" fill="white"
                                        transform="matrix(0.999857 -0.0169369 -0.0169369 -0.999857 0.270996 16.2688)" />
                                </clipPath>
                            </defs>
                        </svg>
                    </button>
                </div>
            </div>

            {{-- <div class="services__others">
                <img src="{{ asset('images/other-services.png') }}" alt="">
                <div class="services-others__blurred-block"></div>
                <div class="services-others">
                    <h3 class="services-others__title">Другие услуги</h3>
                    <div class="services-others__info">
                        <div class="services-others__list">
                            <div class="services-others__item">
                                <a href="" class="services-others__name">Авиабилеты</a>
                            </div>
                            <div class="services-others__item">
                                <a href="" class="services-others__name">Экскурсии и другие услуги</a>
                            </div>
                            <div class="services-others__item">
                                <a href="" class="services-others__name">Суточные цены</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div> --}}

        </div>

        <x-blocks.popular-tours :$tourStatuses />

        <x-sliders.advertisement :$advs />

        <x-blocks.news :$news title="Новости" subtitle="туризма" />

        <x-blocks.offer />

    </main>
@endsection
