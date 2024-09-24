@php
    $phones = explode(',', $setting->phones);
@endphp

<footer class="footer">
    <div class="footer__wrapper">
        <img src="{{ asset('images/logo.svg') }}" alt="" class="footer__logo">
        <div class="second__level">
            <div class="footer-menu">
                <ul class="footer__menu menu">
                    <li class="footer-menu__item menu__item"> <a href="/pages/{{ $pages->find(2)->url }}"
                            class="footer-menu__link menu__link">{{ $pages->find(2)->title }}</a>
                    </li>
                    </li>
                    <li class="footer-menu__item menu__item"> <a href="/pages/{{ $pages->find(5)->url }}"
                            class="footer-menu__link menu__link">{{ $pages->find(5)->title }}</a>
                    </li>
                </ul>
            </div>
            <div class="footer__main-menu">
                <ul class="footer-main-menu menu">
                    <li class="footer-main-menu__item menu__item">
                        <a href="/news" class="footer-main-menu__link menu__link">Новости
                        </a>
                    </li>
                    <li class="footer-main-menu__item menu__item">
                        <a href="/blogs" class="footer-main-menu__link menu__link">Блог</a>
                    </li>
                    <li class="footer-main-menu__item menu__item">
                        <a href="{{ $pages->find(4)->url }}"
                            class="footer-main-menu__link menu__link">{{ $pages->find(4)->title }}</a>
                    </li>
                    {{-- <li class="footer-main-menu__item menu__item">
                        <a href="" class="footer-main-menu__link menu__link">Отели</a>
                    </li>
                    <li class="footer-main-menu__item menu__item">
                        <a href="" class="footer-main-menu__link menu__link">Круизы</a>
                    </li>
                    <li class="footer-main-menu__item menu__item">
                        <a href="" class="footer-main-menu__link menu__link">Визы</a>
                    </li> --}}
                    <li class="footer-main-menu__item menu__item">
                        <a href="/pages/{{ $pages->find(1)->url }}"
                            class="footer-main-menu__link menu__link">{{ $pages->find(1)->title }}</a>
                    </li>
                    <li class="footer-main-menu__item menu__item">
                        <a href="" class="footer-main-menu__link menu__link">Ранее бронирование</a>
                    </li>
                    <li class="footer-main-menu__item menu__item">
                        <a href="" class="footer-main-menu__link menu__link">Спецпредложение</a>
                    </li>
                </ul>
            </div>
            <div class="footer__corporation-info">
                <a href="tel:{{ $phones[0] }}">{{ $phones[0] }}</a>
                <a href="tel:{{ $phones[1] }}">{{ $phones[1] }}</a>
                <a href="mailto:{{ $setting->email }}">{{ $setting->email }}</a>
                <p class="footer-corporation__info">
                    {{ $setting->address }}
                </p>
            </div>
        </div>
        <div class="footer-pages-messengers">
            <ul class="footer__pages menu">
                <li class="footer-pages__item menu__item">
                    <a class="footer-pages__link menu__link" href="" class=>Политика Конфиденциальности</a>
                </li>
                <li class="footer-pages__item menu__item">
                    <a class="footer-pages__link menu__link" href="">Пользовательское соглашение</a>
                </li>
                <li class="footer-pages__item menu__item">
                    <a class="footer-pages__link menu__link" href="">Согласие на обработку персональных
                        данных</a>
                </li>
            </ul>
            <div class="footer__messangers">
                <a href="{{ $setting->telegram }}" class="footer-messanger__icon footer-messanger__telegram">
                    <svg width="21" height="19" viewBox="0 0 21 19" fill="inherit"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M20.9402 1.72981L17.771 17.8531C17.5318 18.9913 16.9086 19.274 16.0225 18.7382L11.1938 14.8996L8.86416 17.3173C8.60623 17.5956 8.39075 17.828 7.89359 17.828L8.24055 12.5227L17.1898 3.79836C17.5788 3.42405 17.1054 3.2167 16.5849 3.59101L5.52148 11.1062L0.758553 9.49819C-0.277303 9.149 -0.296021 8.38068 0.974033 7.84434L19.6039 0.101078C20.4668 -0.24762 21.2214 0.308425 20.9402 1.72981Z"
                            fill="inherit" />
                    </svg>
                </a>
                <a href="{{ $setting->whatsapp }}" class="footer-messanger__icon footer-messanger__whatsapp">
                    <svg width="20" height="20" viewBox="0 0 20 20" fill="inherit"
                        xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0_85_166)">
                            <path
                                d="M10 0C4.52174 0 0 4.52174 0 10C0 12.087 0.608696 14 1.73913 15.6522L0.608696 19.0435C0.521739 19.2174 0.608696 19.3913 0.695652 19.4783C0.869565 19.5652 1.04348 19.6522 1.21739 19.5652L4.69565 18.4348C6.26087 19.4783 8.17391 20 10 20C15.4783 20 20 15.4783 20 10C20 4.52174 15.4783 0 10 0ZM16 14.087C15.7391 14.8696 14.6957 15.5652 13.8261 15.7391C13.6522 15.7391 13.4783 15.8261 13.2174 15.8261C12.5217 15.8261 11.6522 15.5652 10.2609 15.0435C8.52174 14.3478 6.78261 12.7826 5.3913 10.7826L5.30435 10.6957C4.78261 10 4 8.78261 4 7.47826C4 6 4.78261 5.21739 5.04348 4.86957C5.3913 4.52174 5.82609 4.34783 6.34783 4.34783C6.43478 4.34783 6.52174 4.34783 6.6087 4.34783H6.69565C7.13043 4.34783 7.3913 4.52174 7.65217 5.04348L7.82609 5.3913C8.08696 6 8.43478 6.95652 8.52174 7.13043C8.69565 7.47826 8.69565 7.73913 8.52174 8C8.43478 8.17391 8.34783 8.34783 8.17391 8.52174C8.08696 8.6087 8 8.69565 8 8.78261C7.91304 8.86957 7.82609 8.95652 7.73913 9.04348C7.73913 9.13043 7.73913 9.13043 7.73913 9.13043C8 9.56522 8.52174 10.3478 9.21739 10.9565C10.1739 11.8261 10.8696 12.087 11.2174 12.2609H11.3043C11.3913 12.2609 11.4783 12.3478 11.4783 12.2609C11.6522 12.087 11.8261 11.7391 12.087 11.4783L12.1739 11.3913C12.4348 11.0435 12.7826 10.9565 12.9565 10.9565C13.0435 10.9565 13.2174 10.9565 13.3043 11.0435C13.3913 11.0435 13.5652 11.1304 15.2174 12L15.3913 12.087C15.6522 12.1739 15.8261 12.2609 15.913 12.5217C16.2609 12.6957 16.1739 13.4783 16 14.087Z"
                                fill="inherit" />
                        </g>
                        <defs>
                            <clipPath id="clip0_85_166">
                                <rect width="20" height="20" fill="white" />
                            </clipPath>
                        </defs>
                    </svg>
                </a>
            </div>
        </div>
        <div class="third__level">
            <div class="footer__payment">
                <a class="footer-payment-icon" href=""><img src="{{ asset('images/sbp.svg') }}"
                        alt="СБП"></a>
                <a class="footer-payment-icon_mobile" href=""><img src="{{ asset('images/sbp_mobile.svg') }}"
                        alt="СБП"></a>
                <a class="footer-payment-icon" href=""><img src="{{ asset('images/up.svg') }}"
                        alt="UnionPay"></a>
                <a class="footer-payment-icon_mobile" href=""><img src="{{ asset('images/up_mobile.svg') }}"
                        alt="UnionPay"></a>
                <a class="footer-payment-icon" href=""><img src="{{ asset('images/mc.svg') }}"
                        alt="MasterCard"></a>
                <a class="footer-payment-icon_mobile" href=""><img src="{{ asset('images/mc_mobile.svg') }}"
                        alt="MasterCard"></a>
                <a class="footer-payment-icon" href=""><img src="{{ asset('/images/visa.svg') }}"
                        alt="Visa"></a>
                <a class="footer-payment-icon_mobile" href=""><img
                        src="{{ asset('images/visa_mobile.svg') }}" alt="Visa"></a>
                <a class="footer-payment-icon" href=""><img src="{{ asset('images/mir.svg') }}"
                        alt="МИР"></a>
                <a class="footer-payment-icon_mobile" href=""><img src="{{ asset('images/mir_mobile.svg') }}"
                        alt="МИР"></a>
            </div>
            <div class="footer__currencies">
                @foreach ($currencies as $currency)
                    <div class="currency">
                        @switch($currency->currency)
                            @case('CNY/RUB')
                                <img class="currency-icon" src="{{ asset('images/ch.svg') }}" alt=""
                                    class="currency__image">
                                <img class="currency-icon_mobile" src="{{ asset('images/ch_mobile.svg') }}" alt=""
                                    class="currency__image">
                            @break

                            @case('USD/RUB')
                                <img class="currency-icon" src="{{ asset('images/usa.svg') }}" alt=""
                                    class="currency__image">
                                <img class="currency-icon_mobile" src="{{ asset('images/usa_mobile.svg') }}" alt=""
                                    class="currency__image">
                            @break

                            @case('EUR/RUB')
                                <img class="currency-icon" src="{{ asset('images/eu.svg') }}" alt=""
                                    class="currency__image">
                                <img class="currency-icon_mobile" src="{{ asset('images/eu_mobile.svg') }}" alt=""
                                    class="currency__image">

                                @default
                            @endswitch
                            <div class="currency__description">
                                <span class="currency__title">{{ $currency->currency }}</span>
                                <span class="currency__subtitle">{{ $currency->rate }}</span>
                            </div>
                        </div>
                    @endforeach
                </div>
                <form class="footer__notification">
                    <input type="email" required name="email" placeholder="E-mail">
                    <button type="submit">Подписаться</button>
                </form>
            </div>
            <div class="fourth__level">
                <span class="footer__copyright">
                    © ООО «Туристическая фирма «Меркурий», 2006-{{ date('Y') }}
                </span>
                <a href="https://visualteam.ru" class="footer__creator">Разработка: VisualTeam</a>
            </div>
        </div>
    </footer>
