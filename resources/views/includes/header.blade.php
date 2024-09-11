@php
    $phones = explode(',', $setting->phones);
@endphp

<header class="header">
    <div class="header-actions-logo">
        <a href="/"><img src="{{ asset('images/logo.svg') }}" alt="" class="header__logo"></a>
        <ul class="header-menu menu">
            <li class="header-menu__item menu__item">
                <a href="/pages/{{ $pages->find(2)->url }}"
                    class="header-menu__link menu__link">{{ $pages->find(2)->title }}</a>
            </li>
            <li class="header-menu__item menu__item">
                <a href="/pages/{{ $pages->find(5)->url }}"
                    class="header-menu__link menu__link">{{ $pages->find(5)->title }}</a>
            </li>
        </ul>
    </div>
    <div class="header__main-menu">
        <ul class="header-main-menu menu">
            <li class="header-main-menu__item menu__item">
                <a href="/pages/{{ $pages->find(1)->url }}"
                    class="header-main-menu__link menu__link">{{ $pages->find(1)->title }}</a>
            </li>
            <li class="header-main-menu__item menu__item">
                <a href="/news" class="header-main-menu__link menu__link">Новости</a>
            </li>
            <li class="header-main-menu__item menu__item">
                <a href="/blogs" class="header-main-menu__link menu__link">Блог</a>
            </li>
            <li class="header-main-menu__item menu__item">
                <a href="/pages/{{ $pages->find(4)->url }}"
                    class="header-main-menu__link menu__link">{{ $pages->find(4)->title }}</a>
            </li>
        </ul>
    </div>
    <div class="box">
        <svg class="icon" width="20" height="20" viewBox="0 0 20 20" fill="none"
            xmlns="http://www.w3.org/2000/svg">
            <path
                d="M18.3056 16.6425L14.5825 13.41C17.0825 10.4373 16.9133 6.04477 14.0667 3.27027C12.5513 1.79272 10.5672 1.05542 8.58006 1.05542C6.59588 1.05542 4.60877 1.79272 3.09339 3.27027C0.0626203 6.22527 0.0626203 11.0125 3.09339 13.9675C4.60882 15.4451 6.59288 16.1824 8.58006 16.1824C10.3259 16.1824 12.0695 15.6101 13.496 14.4695L16.8113 18.0995C16.8374 18.1297 16.8674 18.1571 16.8985 18.1844C17.3342 18.5643 18.0062 18.5272 18.3959 18.0995C18.7835 17.6747 18.7443 17.0195 18.3056 16.6425ZM13.0702 12.995C11.8703 14.1649 10.2777 14.8075 8.57998 14.8075C6.88526 14.8075 5.29075 14.163 4.08972 12.995C2.8898 11.8251 2.23075 10.2723 2.23075 8.61702C2.23075 6.96467 2.8918 5.41002 4.08972 4.23902C5.28965 3.06909 6.88229 2.42652 8.57998 2.42652C10.2747 2.42652 11.8692 3.07104 13.0702 4.23902C14.2702 5.40895 14.9292 6.96177 14.9292 8.61702C14.9292 10.2723 14.2672 11.825 13.0702 12.995Z"
                fill="#342635" />
        </svg>
        <input class="search" type="search" placeholder="Поиск" />
    </div>
    <div class="header__messengers">
        <svg class="header-messengers__phone" width="21" height="21" viewBox="0 0 21 21" fill="none"
            xmlns="http://www.w3.org/2000/svg">
            <path
                d="M18.9 14.35L15.9833 14C15.2833 13.8833 14.5833 14.1167 14.1167 14.7L12.0167 16.8C8.75 15.1667 5.95 12.4833 4.31667 9.1L6.53333 6.88333C7 6.41667 7.23333 5.71667 7.23333 5.01667L6.65 2.1C6.53333 0.933334 5.48333 0 4.31667 0H2.33333C1.05 0 0 1.16667 0 2.45C0.583333 12.3667 8.63333 20.4167 18.55 21C19.8333 21 21 19.95 21 18.6667V16.6833C21 15.4 20.0667 14.4667 18.9 14.35Z"
                fill="#582F9A" />
        </svg>
        <a href="" class="header-messengers__telegram">
            <svg width="25" height="20" viewBox="0 0 25 20" fill="inherit" xmlns="http://www.w3.org/2000/svg">
                <path
                    d="M24.1416 1.82085L20.4878 18.7928C20.212 19.9909 19.4936 20.2885 18.472 19.7244L12.9051 15.6837L10.2193 18.2287C9.92197 18.5216 9.67354 18.7663 9.10038 18.7663L9.50038 13.1818L19.8178 3.99827C20.2663 3.60426 19.7205 3.386 19.1205 3.78001L6.36562 11.6908L0.874522 9.9981C-0.319698 9.63053 -0.341277 8.82177 1.12295 8.2572L22.601 0.106398C23.5958 -0.260653 24.4658 0.324658 24.1416 1.82085Z"
                    fill="inherit" />
            </svg>
        </a>
        <a href="" class="header-messengers__whatsapp">
            <svg width="23" height="22" viewBox="0 0 23 22" fill="inherit" xmlns="http://www.w3.org/2000/svg">
                <g clip-path="url(#clip0_85_356)">
                    <path
                        d="M11.2109 0C5.18485 0 0.210938 4.97391 0.210938 11C0.210938 13.2957 0.880503 15.4 2.12398 17.2174L0.880503 20.9478C0.784851 21.1391 0.880503 21.3304 0.976155 21.4261C1.16746 21.5217 1.35876 21.6174 1.55007 21.5217L5.37615 20.2783C7.09789 21.4261 9.20224 22 11.2109 22C17.237 22 22.2109 17.0261 22.2109 11C22.2109 4.97391 17.237 0 11.2109 0ZM17.8109 15.4957C17.524 16.3565 16.3762 17.1217 15.4196 17.313C15.2283 17.313 15.037 17.4087 14.7501 17.4087C13.9849 17.4087 13.0283 17.1217 11.4979 16.5478C9.58485 15.7826 7.67181 14.0609 6.14137 11.8609L6.04572 11.7652C5.47181 11 4.61094 9.66087 4.61094 8.22609C4.61094 6.6 5.47181 5.73913 5.75876 5.35652C6.14137 4.97391 6.61963 4.78261 7.19355 4.78261C7.2892 4.78261 7.38485 4.78261 7.4805 4.78261H7.57615C8.05442 4.78261 8.34137 4.97391 8.62833 5.54783L8.81963 5.93043C9.10659 6.6 9.4892 7.65217 9.58485 7.84348C9.77616 8.22609 9.77616 8.51304 9.58485 8.8C9.4892 8.9913 9.39355 9.18261 9.20224 9.37391C9.10659 9.46957 9.01094 9.56522 9.01094 9.66087C8.91529 9.75652 8.81963 9.85217 8.72398 9.94783C8.72398 10.0435 8.72398 10.0435 8.72398 10.0435C9.01094 10.5217 9.58485 11.3826 10.3501 12.0522C11.4022 13.0087 12.1675 13.2957 12.5501 13.487H12.6457C12.7414 13.487 12.837 13.5826 12.837 13.487C13.0283 13.2957 13.2196 12.913 13.5066 12.6261L13.6022 12.5304C13.8892 12.1478 14.2718 12.0522 14.4631 12.0522C14.5588 12.0522 14.7501 12.0522 14.8457 12.1478C14.9414 12.1478 15.1327 12.2435 16.9501 13.2L17.1414 13.2957C17.4283 13.3913 17.6196 13.487 17.7153 13.7739C18.0979 13.9652 18.0022 14.8261 17.8109 15.4957Z"
                        fill="inherit" />
                </g>
                <defs>
                    <clipPath id="clip0_85_356">
                        <rect width="22" height="22" fill="white" transform="translate(0.210938)" />
                    </clipPath>
                </defs>
            </svg>
        </a>
        <a href="tel:{{ $phones[0] }}" class="header__phone">{{ $phones[0] }}</a>
    </div>
    <div class="search-profile">
        <button class="search-tour-button" data-href="/#search-tour">Поиск тура</button>
        <button class="profile-button"><svg width="16" height="20" viewBox="0 0 16 20" fill="none"
                xmlns="http://www.w3.org/2000/svg">
                <path
                    d="M7.54388 1.25C9.57065 1.25 11.2196 2.88457 11.2196 4.89375C11.2196 6.90294 9.57065 8.53755 7.54388 8.53755C5.5171 8.53755 3.86816 6.90294 3.86816 4.8938C3.86816 2.88465 5.5171 1.25 7.54388 1.25ZM7.54388 0C4.82347 0 2.61816 2.19102 2.61816 4.89375C2.61816 7.59649 4.82347 9.78755 7.54388 9.78755C10.2643 9.78755 12.4696 7.59653 12.4696 4.8938C12.4696 2.19106 10.2643 0 7.54388 0Z"
                    fill="black" />
                <path
                    d="M10.6283 12.1523C10.999 12.1601 13.8375 12.3089 13.8375 15.025V18.7499H1.25004V15.025C1.25004 12.3577 3.93074 12.1639 4.44771 12.1523H10.6283ZM10.6398 10.9023H4.44767C4.44767 10.9023 0 10.9518 0 15.025C0 19.0734 0 19.9999 0 19.9999H15.0875C15.0875 19.9999 15.0875 19.0734 15.0875 15.025C15.0875 10.9763 10.6398 10.9023 10.6398 10.9023Z"
                    fill="black" />
            </svg>
        </button>
    </div>
    <label class="hamburger" for="hamburger">
        <input class="checkbox" type="checkbox" id="hamburger" />
        <div class="hamburger-lines">
            <span class="line line1"></span>
            <span class="line line2"></span>
            <span class="line line3"></span>
        </div>
    </label>
    <div class="menu-hamburger">
        <div class="menu-items">
            <li>
                <a class="menu-items__link" href="/pages/{{ $pages->find(2)->url }}">{{ $pages->find(2)->title }}</a>
            </li>
            <li>
                <a class="menu-items__link" href="/pages/{{ $pages->find(5)->url }}">{{ $pages->find(5)->title }}</a>
            </li>
            <li>
                <a class="menu-items__link" href="/pages/{{ $pages->find(1)->url }}">{{ $pages->find(1)->title }}</a>
            </li>
            <li>
                <a class="menu-items__link" href="/news">Новости</a>
            </li>
            <li>
                <a class="menu-items__link" href="/blogs">Блог</a>
            </li>
            <li>
                <a class="menu-items__link"
                    href="/pages/{{ $pages->find(4)->url }}">{{ $pages->find(4)->title }}</a>
            </li>
            <li>
                <a class="menu-items__link" id="pa-button" href="">Личный кабинет</a>
            </li>
        </div>
        @include('includes.footer')
    </div>
</header>
