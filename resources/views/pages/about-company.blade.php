@extends('layouts.default')

@section('head')
   <link rel="stylesheet" href="{{ asset('/css/about.css') }}?v={{ sha1_file(public_path() . '/css/about.css') }}">
@endsection

@section('content')
    <main>
        <div class="page-header">
            <x-templates.bread-crumbs :data="$breadcrumbs" />
            <h1 class="page-title">О компании</h1>
        </div>

        <div class="company-background">
            <img src="{{ asset('images/about/logo1.svg') }}" alt="Меркурий" class="company-background__image">
            <p class="company-background__text"><span>Туристическая фирма «Меркурий»</span> - лицензированный
                многопрофильный туроператор зарегистрированная в Едином Федеральном реестре туроператоров под номером РТО
                017558</p>
        </div>
        <div class="company-decription">
            <div class="company-description-wrapper">
                <p class="company-description__text">
                    До 2020 года основным видом деятельности компании была организация туров в Италию. Сегодня, активное
                    использование современных цифровых технологий и интеграционных решений позволяют нам создавать для
                    туристов качественный продукт по конкурентным ценам
                    по таким странам как ОАЭ, Мальдивы, Сейшелы, Египет, Турция, Шри-Ланка, Таиланд, страны ЮВА, Китай и
                    другим направлениям.
                </p>
            </div>
            <div class="company-description-wrapper">
                <p class="company-description__text"> Наша компания сотрудничает с регулярными перевозчиками, что
                    гарантирует выполнение всех обязательств перед клиентами и партнерами точно и в срок.</p>
                <p class="company-description__text">
                    За 20 лет работы на туристическом рынке мы зарекомендовали себя как надежная компания с безупречной
                    финансовой репутацией.
                </p>
            </div>
        </div>
        <div class="company-statistics">
            <div class="company-statistics-wrapper">
                <img src="{{ asset('images/about/tree.svg') }}" alt="" class="company-statistics__icon">
                <p class="company-statistics__text">Работаем с 2004 года</p>
            </div>
            <div class="company-statistics-wrapper">
                <img src="{{ asset('images/about/user_checked.svg') }}" alt="" class="company-statistics__icon">
                <p class="company-statistics__text">Создаем пакетные туры и индивидуальные программы</p>
            </div>
            <div class="company-statistics-wrapper">
                <img src="{{ asset('images/about/trust.svg') }}" alt="" class="company-statistics__icon">
                <p class="company-statistics__text">Работаем с проверенными и надежными партнерами по всему миру</p>
            </div>
            <div class="company-statistics-wrapper">
                <img src="{{ asset('images/about/hands.svg') }}" alt="" class="company-statistics__icon">
                <p class="company-statistics__text">Наша команда – это квалифицированные менеджеры с опытом работы от 10 лет
                </p>
            </div>
            <div class="company-statistics-wrapper">
                <img src="{{ asset('images/about/certificate.svg') }}" alt="" class="company-statistics__icon">
                <p class="company-statistics__text">Наш опыт и знание туристического рынка позволяют формировать для
                    туристов интересные программы и выгодные цены</p>
            </div>
            <div class="company-statistics-wrapper">
                <img src="{{ asset('images/about/hand_trusted.svg') }}" alt="" class="company-statistics__icon">
                <p class="company-statistics__text">Наши туристы страхуются в стабильных страховых компаниях: «ЕВРОИНС» и
                    «АльфаСтрахование»</p>
            </div>
        </div>
        <div class="company-experts">
            <h2 class="company-experts__headding">Контакты экспертов и отделов:</h2>
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
                        <h3 class="company-experts__fio">Отдел тарификации</h3>
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
@endsection
