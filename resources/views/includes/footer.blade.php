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
                        <a href="/pages/{{ $pages->find(4)->url }}"
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
                        <a href="/tours?earlier_booking=1" class="footer-main-menu__link menu__link">Ранее
                            бронирование</a>
                    </li>
                    <li class="footer-main-menu__item menu__item">
                        <a href="/tours?special_offers=1" class="footer-main-menu__link menu__link">Спецпредложение</a>
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
                <a href="{{ $setting->vk }}" class="footer-messanger__icon footer-messanger__vk">
                    <svg width="26" height="26" viewBox="0 0 26 26" fill="inherit"
                        xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0_863_185)">
                            <path
                                d="M25.8622 18.9799C25.8307 18.912 25.8013 18.8558 25.7741 18.8107C25.323 17.9982 24.4609 17.001 23.1885 15.8187L23.1616 15.7917L23.1481 15.7784L23.1345 15.7648H23.1209C22.5434 15.2143 22.1777 14.8441 22.0245 14.6546C21.7443 14.2936 21.6815 13.9281 21.8347 13.5579C21.9429 13.2781 22.3493 12.6874 23.053 11.7847C23.4232 11.3064 23.7163 10.923 23.9328 10.6341C25.4942 8.55833 26.1712 7.23187 25.9635 6.65422L25.8828 6.51923C25.8286 6.43796 25.6888 6.36362 25.4634 6.29582C25.2375 6.22816 24.9488 6.21697 24.5968 6.26206L20.6982 6.28899C20.635 6.26661 20.5448 6.2687 20.4274 6.29582C20.31 6.32294 20.2513 6.33655 20.2513 6.33655L20.1835 6.37045L20.1296 6.41118C20.0845 6.43811 20.0348 6.48547 19.9806 6.55318C19.9267 6.62065 19.8816 6.69983 19.8456 6.79006C19.4211 7.88206 18.9385 8.89734 18.3969 9.83586C18.063 10.3955 17.7563 10.8805 17.4762 11.2911C17.1965 11.7017 16.9619 12.0041 16.7725 12.198C16.5829 12.3921 16.4117 12.5475 16.258 12.665C16.1045 12.7825 15.9873 12.8321 15.9062 12.814C15.8249 12.7958 15.7483 12.7778 15.6758 12.7598C15.5496 12.6785 15.448 12.568 15.3714 12.4281C15.2945 12.2882 15.2427 12.1122 15.2157 11.9001C15.1887 11.6879 15.1728 11.5053 15.1683 11.3518C15.164 11.1985 15.166 10.9817 15.1751 10.702C15.1845 10.4221 15.1887 10.2327 15.1887 10.1334C15.1887 9.79044 15.1954 9.41819 15.2088 9.01659C15.2225 8.61499 15.2335 8.29679 15.2428 8.06238C15.252 7.82772 15.2563 7.57946 15.2563 7.31774C15.2563 7.05601 15.2403 6.85075 15.2088 6.70178C15.1777 6.55299 15.13 6.40857 15.0671 6.26855C15.0038 6.12868 14.9111 6.02048 14.7896 5.94367C14.6677 5.86695 14.5163 5.80607 14.3361 5.76084C13.8577 5.65259 13.2486 5.59404 12.5084 5.58493C10.8299 5.56692 9.75136 5.67531 9.27305 5.90996C9.08353 6.0091 8.91204 6.14456 8.7587 6.31592C8.59621 6.51454 8.57355 6.62293 8.69085 6.64076C9.23241 6.72188 9.61581 6.91595 9.84145 7.22277L9.92277 7.38535C9.98602 7.50265 10.0492 7.71033 10.1124 8.00809C10.1755 8.30585 10.2162 8.63524 10.2341 8.99606C10.2792 9.65498 10.2792 10.219 10.2341 10.6882C10.1889 11.1576 10.1463 11.5231 10.1055 11.7848C10.0648 12.0465 10.0039 12.2586 9.92277 12.421C9.84145 12.5834 9.78735 12.6827 9.76023 12.7187C9.73316 12.7548 9.71059 12.7775 9.69266 12.7864C9.57536 12.8314 9.45336 12.8543 9.3271 12.8543C9.20065 12.8543 9.04731 12.791 8.86685 12.6646C8.68644 12.5382 8.4992 12.3646 8.30513 12.1434C8.11107 11.9222 7.8922 11.6131 7.64845 11.2161C7.40488 10.819 7.15216 10.3498 6.89043 9.80831L6.67389 9.41563C6.53852 9.16301 6.35361 8.79517 6.11895 8.31244C5.88416 7.82953 5.67663 7.3624 5.49622 6.91116C5.4241 6.72164 5.31576 6.57736 5.17138 6.47808L5.10363 6.43735C5.05858 6.40131 4.98628 6.36305 4.88708 6.32227C4.78775 6.28154 4.6841 6.25234 4.57572 6.23437L0.866543 6.2613C0.487514 6.2613 0.230339 6.34717 0.0949234 6.51866L0.0407289 6.59979C0.0136553 6.64497 0 6.71714 0 6.81647C0 6.91576 0.0270736 7.03761 0.0812681 7.18189C0.622739 8.45449 1.21158 9.68181 1.84778 10.864C2.48399 12.0463 3.03684 12.9986 3.506 13.7201C3.97526 14.4422 4.45358 15.1237 4.94095 15.7643C5.42832 16.4051 5.75093 16.8157 5.90877 16.9961C6.0668 17.1769 6.19093 17.312 6.28116 17.4022L6.61965 17.7271C6.83624 17.9437 7.15429 18.2032 7.57396 18.5054C7.99372 18.8079 8.45842 19.1056 8.96832 19.3992C9.4783 19.6922 10.0716 19.9314 10.7485 20.1164C11.4254 20.3015 12.0841 20.3758 12.7249 20.34H14.2818C14.5975 20.3127 14.8367 20.2134 14.9993 20.0421L15.0531 19.9742C15.0894 19.9204 15.1233 19.8367 15.1546 19.7241C15.1862 19.6113 15.202 19.487 15.202 19.3518C15.1927 18.9638 15.2223 18.6141 15.2898 18.3028C15.3572 17.9916 15.4342 17.7569 15.5202 17.5989C15.6061 17.441 15.7031 17.3078 15.8111 17.1998C15.9193 17.0915 15.9964 17.026 16.0416 17.0034C16.0866 16.9807 16.1225 16.9653 16.1495 16.956C16.3661 16.8839 16.621 16.9537 16.9146 17.166C17.208 17.3781 17.4831 17.64 17.7405 17.9512C17.9977 18.2627 18.3067 18.6122 18.6677 19.0002C19.0288 19.3883 19.3446 19.6768 19.6152 19.8666L19.8859 20.0291C20.0666 20.1375 20.3013 20.2368 20.5901 20.327C20.8785 20.4172 21.1311 20.4397 21.348 20.3946L24.8134 20.3406C25.1561 20.3406 25.4228 20.2838 25.612 20.1712C25.8016 20.0584 25.9142 19.9342 25.9505 19.799C25.9867 19.6637 25.9887 19.5101 25.9574 19.3385C25.9253 19.1673 25.8937 19.0476 25.8622 18.9799Z"
                                fill="inherit" />
                        </g>
                        <defs>
                            <clipPath id="clip0_863_185">
                                <rect width="26" height="26" fill="white" />
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
