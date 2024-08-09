@extends('layouts.default')

@section('head')
    <link rel="stylesheet" href="{{ asset('/css/contacts.css') }}?v={{ sha1_file(public_path() . '/css/contacts.css') }}">
    <script src="https://api-maps.yandex.ru/2.1/?load=package.standard&amp;lang=ru_RU"></script>
@endsection

@section('content')
    <main>
        <div class="contacts-headding">
            <x-templates.bread-crumbs :data="$breadcrumbs" />
            <h1 class="contacts-headding__title">Контакты</h1>
        </div>

        <div class="contacts-social">
            <div class="contacts-social__call">
                <h2 class="contacts-social__title">Позвоните нам</h2>
                <div class="contacts-social__contacts">
                    <div class="contacts-social__contact">
                        <a href="tel:+7(812)702-77-85" class="contacts-social-contact__phone">+7 (812) 702-77-85</a>
                        <span class="contacts-social-contact__title">(Многоканальный)</span>
                    </div>
                    <div class="contacts-social__contact">
                        <a href="tel:+7(812)957-01-85" class="contacts-social-contact__phone">+7 (812) 957-01-85</a>
                        <span class="contacts-social-contact__title">(Санкт-Петербург)</span>
                    </div>
                </div>
            </div>
            <div class="contacts-social__messangers">
                <div class="contacts-social-messangers__title">Мы в социальных сетях</div>
                <div class="contacts-social-messangers-list">
                    <a href="" class="contacts-social-messangers__icon contacts-social-messangers__telegram">
                        <svg width="44" height="37" viewBox="0 0 44 37" fill="inherit"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M43.8747 3.29372L37.2344 33.9941C36.7332 36.1613 35.4275 36.6996 33.5709 35.6793L23.4537 28.3702L18.5725 32.9738C18.0321 33.5036 17.5806 33.9462 16.539 33.9462L17.2659 23.8444L36.0168 7.23243C36.8317 6.51971 35.8398 6.12491 34.7494 6.83762L11.5688 21.1473L1.58935 18.0854C-0.581017 17.4206 -0.620234 15.9576 2.04083 14.9364L41.0749 0.192462C42.8827 -0.471492 44.4639 0.58727 43.8747 3.29372Z"
                                fill="inherit" />
                        </svg>
                    </a>
                    <a href="" class="contacts-social-messangers__icon contacts-social-messangers__vk">
                        <svg width="51" height="51" viewBox="0 0 51 51" fill="inherit"
                            xmlns="http://www.w3.org/2000/svg">
                            <g clip-path="url(#clip0_160_128)">
                                <path
                                    d="M48.7827 33.7532C47.6723 32.4203 46.4104 31.2257 45.1901 30.0703C44.7562 29.6594 44.3076 29.2346 43.875 28.8122C42.6334 27.5982 42.5882 27.1422 43.5713 25.7632C44.2514 24.8127 44.9725 23.8609 45.6699 22.9405C46.3025 22.1053 46.9567 21.2417 47.5836 20.3753L47.7123 20.1972C48.9106 18.5391 50.1499 16.8247 50.8094 14.7565C50.9806 14.2108 51.1605 13.4078 50.7493 12.7364C50.3384 12.0655 49.5413 11.8609 48.9774 11.7653C48.6985 11.718 48.4215 11.7115 48.1645 11.7115L40.3171 11.7059L40.2523 11.7053C39.0658 11.7053 38.2662 12.2645 37.808 13.4149C37.3706 14.514 36.89 15.6845 36.3417 16.7974C35.2506 19.0136 33.8647 21.5661 31.8594 23.695L31.7746 23.7855C31.5378 24.04 31.2695 24.3282 31.0734 24.3282C31.0434 24.3282 31.0107 24.3225 30.9736 24.3108C30.5582 24.149 30.2794 23.1434 30.2921 22.6757C30.2922 22.6692 30.2924 22.6628 30.2924 22.6563L30.2869 13.5864C30.2869 13.555 30.2846 13.5238 30.2806 13.4926C30.0809 12.0182 29.6387 11.1004 27.9679 10.7732C27.9236 10.7644 27.8782 10.76 27.833 10.76H19.6733C18.344 10.76 17.6115 11.3003 16.9229 12.1091C16.737 12.3252 16.3501 12.7753 16.5419 13.3212C16.7365 13.8753 17.368 13.9938 17.5737 14.0323C18.5945 14.2265 19.1699 14.8509 19.3329 15.942C19.6175 17.8365 19.6524 19.8587 19.443 22.3059C19.3846 22.9861 19.2691 23.5114 19.0787 23.9602C19.0345 24.0649 18.8777 24.4067 18.7178 24.4069C18.667 24.4069 18.52 24.3869 18.2523 24.2025C17.6193 23.7688 17.1562 23.15 16.6163 22.3857C14.7796 19.7899 13.2381 16.9304 11.9031 13.6417C11.4079 12.4311 10.4833 11.7533 9.29818 11.7334C7.99602 11.7136 6.81543 11.7041 5.68945 11.7041C4.45916 11.7041 3.31858 11.7154 2.20481 11.7386C1.25135 11.7554 0.591845 12.0413 0.244827 12.5887C-0.102753 13.1366 -0.0801515 13.8564 0.312069 14.7276C3.4518 21.7076 6.29855 26.7828 9.54272 31.184C11.8159 34.2636 14.0959 36.3953 16.7174 37.8919C19.4792 39.4718 22.5743 40.24 26.1792 40.24C26.5879 40.24 27.0104 40.23 27.4365 40.2101C29.5312 40.108 30.3084 39.3498 30.4066 37.3103C30.4534 36.2679 30.5674 35.1748 31.0797 34.2425C31.4032 33.6552 31.7047 33.6552 31.8038 33.6552C31.9947 33.6552 32.2314 33.7431 32.4856 33.9077C32.9416 34.2053 33.3326 34.604 33.653 34.9523C33.9547 35.2832 34.253 35.6174 34.5516 35.9518C35.1959 36.6735 35.8622 37.4196 36.5582 38.1273C38.0816 39.6772 39.7598 40.3589 41.6874 40.2109H48.8821C48.8974 40.2109 48.9128 40.2104 48.9281 40.2094C49.6451 40.1621 50.266 39.7644 50.6317 39.1183C51.0847 38.318 51.0755 37.2971 50.6072 36.3866C50.0759 35.357 49.3866 34.4774 48.7827 33.7532Z"
                                    fill="inherit" />
                            </g>
                            <defs>
                                <clipPath id="clip0_160_128">
                                    <rect width="51" height="51" fill="white" />
                                </clipPath>
                            </defs>
                        </svg>
                    </a>
                </div>
            </div>
        </div>

        <div class="contacts-company-info">
            <div class="contacts-company-info-wrapper">
                <div class="contacts-company-info__description">
                    <h2 class="contacts-company-info__title">Адрес</h2>
                    <p class="contacts-company-info__text">7-я Красноармейская ул, дом 7 пом 7Н, домофон 3м. Технологический
                        институт</p>
                    <h2 class="contacts-company-info__title">Режим работы:</h2>
                    <p class="contacts-company-info__text">пн-пт: 10.30-18.30<br>сб-вс: выходной</p>
                </div>
                <a href="https://yandex.ru/maps/2/saint-petersburg/?from=api-maps&ll=30.315579%2C59.911865&origin=jsapi_2_1_79&pt=%2C59.911864931802135%2C30.31557936689942&z=18"
                    class="contacts-company-info__map-search">Построить маршрут
                    в Яндекс.Картах</a>
            </div>
            <div class="contacts-company-info__map" id="map"></div>
        </div>

        <div class="company-experts contacts-experts">
            <h2 class="company-experts__headding contacts-experts__headding">Контакты экспертов и отделов:</h2>
            <div class="company-experts-table">
                <div class="company-experts-table__headding">
                    <span class="company-experts-table__header">ФИО</span>
                    <span class="company-experts-table__header">Почта</span>
                </div>
                <div class="company-experts-table-row">
                    <div class="company-experts-fio-block">
                        <h3 class="company-experts__fio">Татьяна Худякова</h3>
                        <p class="company-experts__description">
                            Африка - Кения, Танзания, Намибия, ЮАР, Намибия, Куба, Индийский океан - Сейшелы, Мальдивы, ЮВА
                            - Индонезия, Латинская Америка - Перу, Европа - Франция и Португалия
                        </p>
                    </div>
                    <div class="company-experts-mail-block">
                        <a href="mailto:exotic1@mercury-europe.ru"
                            class="company-experts__mail">exotic1@mercury-europe.ru</a>
                    </div>
                </div>
                <div class="company-experts-table-row">
                    <div class="company-experts-fio-block">
                        <h3 class="company-experts__fio">Светлана Сапега</h3>
                        <p class="company-experts__description">
                            ОАЭ, Индия, Катар, Оман, Таиланд, Филиппины, Малайзия, Сингапур, Иран
                        </p>
                    </div>
                    <div class="company-experts-mail-block">
                        <a href="mailto:svetlana@mercury-europe.ru"
                            class="company-experts__mail">svetlana@mercury-europe.ru</a>
                    </div>
                </div>
                <div class="company-experts-table-row">
                    <div class="company-experts-fio-block">
                        <h3 class="company-experts__fio">Екатерина Тарасенкова</h3>
                        <p class="company-experts__description">
                            Италия, Хорватия, Черногория, Венгрия, Турция, Испания, Кипр, Индонезия, Вьетнам, Египет,
                            Шри-Ланка
                        </p>
                    </div>
                    <div class="company-experts-mail-block">
                        <a href="mailto:ekaterina@italy-spb.ru" class="company-experts__mail">ekaterina@italy-spb.ru</a>
                    </div>
                </div>
                <div class="company-experts-table-row">
                    <div class="company-experts-fio-block">
                        <h3 class="company-experts__fio">Татьяна Иванова
                        </h3>
                        <p class="company-experts__description">
                            Италия, Франция, Испания, Сербия, Китай, Израиль, Кипр, Узбекистан, Армения, Скандинавия,
                            Прибалтика, Болгария
                        </p>
                    </div>
                    <div class="company-experts-mail-block">
                        <a href="mailto:booking@italy-spb.ru" class="company-experts__mail">booking@italy-spb.ru</a>
                    </div>
                </div>
                <div class="company-experts-table-row">
                    <div class="company-experts-fio-block">
                        <h3 class="company-experts__fio">Кристина Калашникова</h3>
                        <p class="company-experts__description">
                            Мальдивы, Маврикий, Мексика, Доминикана, Греция, Великобритания, Япония
                        </p>
                    </div>
                    <div class="company-experts-mail-block">
                        <a href="mailto:kristina@mercury-europe.ru"
                            class="company-experts__mail">kristina@mercury-europe.ru</a>
                    </div>
                </div>
                <div class="company-experts-table-row">
                    <div class="company-experts-fio-block">
                        <h3 class="company-experts__fio">Мария Слободян</h3>
                        <p class="company-experts__description">
                            Россия, Абхазия, Венгрия, Беларусь, Мальта, Словения, Швейцария, Южная Корея
                        </p>
                    </div>
                    <div class="company-experts-mail-block">
                        <a href="mailto:booking1@mercury-europe.ru"
                            class="company-experts__mail">booking1@mercury-europe.ru</a>
                    </div>
                </div>
                <div class="company-experts-table-row">
                    <div class="company-experts-fio-block">
                        <h3 class="company-experts__fio">Наталья Денисюк</h3>
                        <p class="company-experts__description">
                            Италия, Андорра, Португалия, Испания (острова)
                        </p>
                    </div>
                    <div class="company-experts-mail-block">
                        <a href="mailto:natalia@italy-spb.ru" class="company-experts__mail">natalia@italy-spb.ru</a>
                    </div>
                </div>
                <div class="company-experts-table-row">
                    <div class="company-experts-fio-block">
                        <h3 class="company-experts__fio">Бухгалтерия</h3>
                        <p class="company-experts__description"></p>
                    </div>
                    <div class="company-experts-mail-block">
                        <a href="mailto:buh@ mercury-europe.ru" class="company-experts__mail">buh@ mercury-europe.ru</a>
                    </div>
                </div>
                <div class="company-experts-table-row">
                    <div class="company-experts-fio-block">
                        <h3 class="company-experts__fio">Отдел по работе с агентствами</h3>
                        <p class="company-experts__description"></p>
                    </div>
                    <div class="company-experts-mail-block">
                        <a href="mailto:travel@ mercury-europe.ru" class="company-experts__mail">
                            travel@ mercury-europe.ru
                        </a>
                    </div>
                </div>
                <div class="company-experts-table-row">
                    <div class="company-experts-fio-block">
                        <h3 class="company-experts__fio">ТОтдел тарификации</h3>
                        <p class="company-experts__description"></p>
                    </div>
                    <div class="company-experts-mail-block">
                        <a href="mailto:pavel@mercury-europe.ru"
                            class="company-experts__mail">epavel@mercury-europe.ru</a>
                    </div>
                </div>
                <div class="company-experts-table-row">
                    <div class="company-experts-fio-block">
                        <h3 class="company-experts__fio">Добрев Александр</h3>
                        <p class="company-experts__description">
                            Директор по продукту
                        </p>
                    </div>
                    <div class="company-experts-mail-block">
                        <a href="mailto:product@mercury-europe.ru"
                            class="company-experts__mail">product@mercury-europe.ru</a>
                    </div>
                </div>
                <div class="company-experts-table-row">
                    <div class="company-experts-fio-block">
                        <h3 class="company-experts__fio">Логачева Юлия Юрьевна</h3>
                        <p class="company-experts__description">
                            Генеральный директор
                        </p>
                    </div>
                    <div class="company-experts-mail-block">
                        <a href="mailto:info@mercury-europe.ru" class="company-experts__mail">info@mercury-europe.ru</a>
                    </div>
                </div>
            </div>
        </div>

        <x-blocks.offer />

    </main>

    <script>
        ymaps.ready(init); // Ждем, пока API загрузится

        function init() {
            var myMap = new ymaps.Map("map", {
                center: [59.911864931802135, 30.31557936689942], // Координаты центра карты
                zoom: 18, // Масштаб карты
                controls: [] // Отключаем все элементы управления
            });

            var myPlacemark = new ymaps.Placemark([59.911864931802135, 30.31557936689942], {
                balloonContent: "<div class='ya_map'>Заезжайте в гости!</div>" // Подсказка метки
            }, {
                preset: "twirl#redDotIcon" // Тип метки
            });

            myMap.geoObjects.add(myPlacemark); // Добавляем метку на карту
            myPlacemark.balloon.open(); // Открываем подсказку метки
        }
    </script>

    <style>
        .ya_map {
            font-family: arial;
            font-size: 12px;
            color: #454545;
        }

        #map {
            width: 100%;
            min-height: 300px;
        }
    </style>
@endsection
