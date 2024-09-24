window.$ = window.jQuery = require('jquery');
import axios from 'axios';

window.axios = axios;
window.moment = require('moment');
window.daterangepicker = require('daterangepicker');
import Inputmask from "inputmask";
import swal from 'sweetalert';

import "@splidejs/splide/css";
import Splide, { EVENT_SLIDE_KEYDOWN } from "@splidejs/splide";
import { message } from 'laravel-mix/src/Log';

function init() {
    let center = [59.911833615112705, 30.31557668469041];
    let map = new ymaps.Map('map', {
        center: center,
        zoom: 19
    });

    let placemark = new ymaps.Placemark(center, null, {
        iconLayout: 'default#image',
        iconImageHref: '/images/marker.svg',
        iconImageSize: [150, 150],
        iconImageOffset: [-75, -115]
    });
    // map.controls.add('mapTools');
    map.controls.remove('geolocationControl'); // удаляем геолокацию
    map.controls.remove('searchControl'); // удаляем поиск
    map.controls.remove('trafficControl'); // удаляем контроль трафика
    // map.controls.remove('typeSelector'); // удаляем тип
    map.controls.remove('fullscreenControl'); // удаляем кнопку перехода в полноэкранный режим

    // map.controls.remove('zoomControl'); // удаляем контрол зуммирования
    map.controls.remove('rulerControl'); // удаляем контрол правил
    map.geoObjects.add(placemark);
}


$(function () {
    let combobox, search, from, nights, begDate, adults, endDate, to = undefined;
    let user = undefined;

    Inputmask("8(999) 999-9999").mask(document.getElementsByName('phone'));

    $(".combobox").on("click", function () {
        if (!$(this).find(".combobox__item").hasClass("combobox__item_visible")) {
            $(this).css({
                "border-bottom-color": "#B2B2B2",
                // "height": "48px",
            });
            if ($(this).parents(".combobox").find(".combobox__list").hasClass("combobox__list_invisible")) {
                $(this).find(".combobox-header__title").css({
                    'font-size': '18px',
                })
            }
            $(this).find(".combobox__item").addClass("combobox__item_visible");
            $(this).find(".combobox-header__icon").css({
                "transform": "rotate(180deg)",
            });
            $(this).parent(".search-tour__directions").css({
                "overflow-y": "visible",
            })
            $(this).find(".combobox__list").removeClass("combobox__list_invisible");
            combobox = $(this).find(".combobox__list");
        } else {
            $(this).css({
                "border-bottom-color": "transparent",
            });
            $(this).find(".combobox__item").removeClass("combobox__item_visible");
            $(this).find(".combobox__list").addClass("combobox__list_invisible");
            $(this).find(".combobox-header__icon").css({
                "transform": "rotate(0deg)",
            });
            combobox = undefined;
        }
    });

    $(".combobox").on("click", ".combobox__list .combobox__item", function () {
        $(this).parents(".combobox").find(".combobox-header__title").css({
            "font-size": "13px",
        });
        $(this).parents(".combobox").css({
            "border-bottom-color": "transparent",
            // "height": "48px",
        });
        $(this).parents(".combobox").find(".combobox-header__subtitle").css("line-height", "19.15px");
        $(this).parents(".combobox").find(".combobox-header__subtitle").text($(this).text());
        $(this).parents(".combobox").find(".combobox-header__subtitle").data("id", $(this).data("id"));
        $(this).parents(".combobox").find(".combobox-header__subtitle").removeClass("combobox-header__subtitle_invisible");
        $(this).parents(".combobox").css("border-right-color", "transparent");
        $(this).parents(".combobox").find(".combobox-header__subtitle").css({
            "height": "21px",
            "overflow": "hidden",
        })

        if ($(this).parents(".combobox").hasClass("search-tour__from")) {

            $(".search-tour__to.combobox").find(".combobox-header__title").css("font-size", "18px");
            $(".search-tour__to.combobox").find(".combobox-header__subtitle").css("line-height", 0);

            let id = $(this).parents(".search-tour__from.combobox").find(".combobox-header__subtitle").data("id");
            from = $(this).parents(".search-tour__from.combobox").find(".combobox-header__subtitle").data("id");

            $.ajax({
                type: "GET",
                url: "/api/samotour/getCountries",
                data: {
                    id: id
                },
                dataType: "html",
                success: function (response) {
                    $(".search-tour__to .combobox__list").replaceWith(response);
                }
            });
        }

        if ($(this).parents(".combobox").hasClass("search-tour__to"))
            to = $(this).parents(".combobox").find(".combobox-header__subtitle").data("id");

        if ($(this).parents(".combobox").hasClass("search-tour__people-count")) {
            adults = $(this).parents(".combobox").find(".combobox-header__subtitle").data("id");
        }
    });

    $(document).on("mouseup", function (e) {
        if (combobox != undefined && !$(combobox).is(e.target) && $(combobox).parents(".combobox").has(e.target).length === 0) {
            $(combobox).parents(".combobox").css({
                "border-bottom-color": "transparent",
            });
            $(combobox).find(".combobox__list").addClass("combobox__list_invisible");
            $(combobox).find(".combobox__item").removeClass("combobox__item_visible");
            $(combobox).parents(".combobox").find(".combobox-header__icon").css({
                "transform": "rotate(0deg)",
            });
            $(combobox).addClass("combobox__list_invisible");
            combobox = undefined;
        }
    });

    $('input[name="datefilter"]').daterangepicker({
        autoUpdateInput: false,
        "autoApply": true,
        "locale": {
            "format": "MM/DD/YYYY",
            "applyLabel": "Сохранить",
            "cancelLabel": "Назад",
            "daysOfWeek": [
                "Вс",
                "Пн",
                "Вт",
                "Ср",
                "Чт",
                "Пт",
                "Сб"
            ],
            "monthNames": [
                "Январь",
                "Февраль",
                "Март",
                "Апрель",
                "Май",
                "Июнь",
                "Июль",
                "Август",
                "Сентябрь",
                "Октябрь",
                "Ноябрь",
                "Декабрь"
            ],
            "firstDay": 1
        },
    });

    $('input[name="datefilter"]').on('hide.daterangepicker', function (ev, picker) {
        $(this).parents("label").find(".search-tour-dates__subtitle").text(`${picker.startDate.format('DD.MM')} - ${picker.endDate.format('DD.MM')}`);

        begDate = picker.startDate.format('YYYYMMDD');
        endDate = picker.endDate.format('YYYYMMDD');
        nights = Math.round(Number(picker.endDate - picker.startDate) / (1000 * 60 * 60 * 24)) - 1;

        $(".search-tour-nights__subtitle").text(`${nights}`);
        $(".search-tour-nights__subtitle").removeClass("search-tour-nights__subtitle_invisible");
        $(".search-tour-nights__title").css({
            "font-size": "13px",
            "font-weight": "400",
        });
        $(".search-tour__nights").css({
            "row-gap": "2px",
        });
        if (document.documentElement.clientWidth == 375) {
            $(".search-tour__nights").css({
                "padding": "0 20px",
                // "height": "48px"
            });
        }

    });

    $('input[name="tour_datefilter"]').on('hide.daterangepicker', function (ev, picker) {
        $(".tour-cost-dates__subtitle").text(`${picker.startDate.format('DD.MM')}`);
    });

    $('#datapicker-from').daterangepicker({
        autoUpdateInput: false,
        "singleDatePicker": true,
        "autoApply": true,
        "locale": {
            "format": "MM/DD/YYYY",
            "applyLabel": "Сохранить",
            "cancelLabel": "Назад",
            "daysOfWeek": [
                "Вс",
                "Пн",
                "Вт",
                "Ср",
                "Чт",
                "Пт",
                "Сб"
            ],
            "monthNames": [
                "Январь",
                "Февраль",
                "Март",
                "Апрель",
                "Май",
                "Июнь",
                "Июль",
                "Август",
                "Сентябрь",
                "Октябрь",
                "Ноябрь",
                "Декабрь"
            ],
            "firstDay": 1
        },
    });

    $('#datapicker-from').on('hide.daterangepicker', function (ev, picker) {
        $(".search-tour-dates__subtitle").text(`${picker.startDate.format('DD.MM')}`);
        $(".search-tour-dates__subtitle").css({
            "line-height": "19.15px",
        });
        $(".tour-cost__date").css("border-right-color", "transparent");
    });

    $(".popular-tours__tour-card").on("mouseenter", function () {
        $(this).css("width", "500px");
    });

    $(".tour-day-programm__text-description").on("click", function () {
        let block = $(this).parent().find('.tour-day-programm__description');
        if ($(block).css("display") == "none") {
            $(block).show('slow');
            $(this).css({
                "padding-bottom": "16px",
            });
            $(this).parent().find(".tour-day-programm__text-description svg").css({
                'transform': 'rotate(180deg)'
            });
        } else {
            $(block).hide('slow');
            $(this).css({
                "padding-bottom": "0px",
            });
            $(this).parent().find(".tour-day-programm__text-description svg").css({
                'transform': 'rotate(0deg)'
            });
        }
    });

    $("button").on("click", function () {
        if ($(this).data('href') != null) location.href = $(this).data('href');
    });

    $(".news__card").on("click", function () {
        if ($(this).data('href') != null) location.href = $(this).data('href');
    });
    $(".blog__card").on("click", function () {
        if ($(this).data('href') != null) location.href = $(this).data('href');
    });

    $('.icon').on("click", function () {
        if (!$(".box").hasClass("box_active")) {
            $('.search').addClass('expanded');
            $(".box").addClass("box_active");
            $(".header__messengers").addClass("header__messengers_hidden");
            $("input.search.expanded").focus();
            search = $(this).parents(".box");
        } else {
            $('.search').removeClass('expanded');
            $(".box").removeClass("box_active");
            $(".header__messengers").removeClass("header__messengers_hidden");
        }

    });

    $(document).on("mouseup", function (e) {
        if (search != undefined && !$(search).is(e.target) && !$(search).is(e.target) && $(search).has(e.target).length === 0) {
            $('.search').removeClass('expanded');
            $(".box").removeClass("box_active");
            $(".header__messengers").removeClass("header__messengers_hidden");
            search = undefined;
        }
    });

    $(".tour-anchor__item").on("click", function () {

        $("html, body").animate({
            scrollTop: $($(`#${$(this).data("id")}`)).offset().top - 150
        }, {
            duration: 370, // по умолчанию «400»
            easing: "linear" // по умолчанию «swing»
        });
    });

    $(".popular-tours__tour-card").on("click", function () {
        window.location.href = `${$(this).data("href")}`;
    });

    let slider, subSlider = undefined;

    if ($(".subSliders").length > 0) subSlider = new Splide(".subSliders", {
        pagination: false,
        arrows: false,
        type: 'loop',
        breakpoints: {
            786: {
                autoWidth: true,
                perPage: 1,
                padding: 0,
            },
            1023: {
                autoHeight: true,
                perPage: 1,
                padding: 0,
                type: 'slide',
            },
        },
    });

    if ($(".sliders").length > 0) slider = new Splide('.sliders', {
        pagination: false,
        type: 'loop',
        padding: '30em',
        perPage: 1,
        pagination: true,
        breakpoints: {
            375: {
                height: 300,
                perPage: 1,
                padding: 0,
                type: 'slide',
            },
            425: {
                height: 300,
                perPage: 1,
                padding: 0,
                type: 'slide',
            },
            768: {
                height: 462,
                perPage: 1,
                padding: 0,
                type: 'slide',
            },
            1023: {
                autoHeight: true,
                perPage: 1,
                padding: 0,
                height: 462,
                type: 'slide',
            },
            1150: {
                autoHeight: true,
                perPage: 1,
                padding: 0,
                type: 'loop',
            },
            1250: {
                autoHeight: true,
                perPage: 1,
                type: 'loop',
            },
            1300: {
                autoHeight: true,
                perPage: 1,
                type: 'loop',
                padding: 0,
            },
            1740: {
                autoHeight: true,
                perPage: 1,
                type: 'loop',
                padding: 0,
            },
            1920: {
                autoHeight: true,
                perPage: 1,
                type: 'loop',
            }
        },
        height: 779
    });

    if (slider != undefined && subSlider != undefined) {
        slider.sync(subSlider);
        slider.mount();
        subSlider.mount();
    }

    if ($(".news__slider").length > 0) new Splide('.news__slider', {
        gap: 35,
        pagination: false,
        perPage: 3,
        width: 1348,
        autoHeight: true,
        breakpoints: {
            375: {
                perPage: 1,
                pagination: true,
                width: 375,
            },
            425: {
                perPage: 1,
                padination: true,
            },
            768: {
                perPage: 2,
                pagination: true,
            },
            925: {
                perPage: 2,
                pagination: true,
            },
            1024: {
                perPage: 3,
                pagination: true,
            },
            1350: {
                perPage: 3,
                pagination: true,
            },
            1550: {
                perPage: 3,
                width: 1150,
                autoHeight: true,
            },
            1920: {
                perPage: 3,
                autoHeight: true,
            }
        }
    }).mount();

    if ($(".popular-tours__slider").length > 0) new Splide(".popular-tours__slider", {
        gap: 35,
        pagination: false,
        perPage: 3,
        width: 1348,
        autoHeight: true,
        breakpoints: {
            375: {
                perPage: 1,
                width: '100%',
            },
            390: {
                perPage: 1,
                width: '100%',
            },
            650: {
                perPage: 1,
                width: 400,
            },
            768: {
                perPage: 2,
                width: '100%',
            },
            925: {
                perPage: 2,
                width: '100%',
            },
            1024: {
                perPage: 3,
                width: '100%',
            },
            1300: {
                perPage: 3,
                width: '100%',
            },
            1400: {
                perPage: 3,
                width: '100%',
            },
            1550: {
                perPage: 3,
                width: 1150,
            },
        }
    }).mount();

    if ($(".advertisement-slider").length > 0) new Splide(".advertisement-slider", {
        pagination: false,
        perPage: 1,
        breakpoints: {
            375: {
                perPage: 1,
            },
            425: {
                perPage: 1,
            },
            768: {
                perPage: 1,
            },
            1024: {
                perPage: 1,
            },
            1400: {
                perPage: 1,
            }
        }
    }).mount();

    if ($(".search-tour-buttons__slider").length > 0) new Splide(".search-tour-buttons__slider", {
        pagination: false,
        arrows: false,
        padding: {
            left: 10,
        },
        gap: 0,
        breakpoints: {
            320: {
                type: "slide",
                perPage: 2,
                arrows: false,
                gap: 31,
                autoWidth: true,
                padding: {
                    // left: 40,
                }
            },
            375: {
                type: "slide",
                perPage: 2,
                arrows: false,
                gap: 31,
                autoWidth: true,
                padding: {
                    // left: 40,
                }
            },
            500: {
                type: "slide",
                perPage: 4,
                arrows: false,
                gap: 31,
                autoWidth: true,
            },
            768: {
                type: "slide",
                perPage: 4,
                arrows: false,
                gap: 31,
                autoWidth: true,
            },
            1024: {
                type: "slide",
                perPage: 4,
                arrows: false,
                gap: 31,
                autoWidth: true,
            },
            1350: {
                type: "slide",
                perPage: 4,
                arrows: false,
                gap: 31,
                autoWidth: true,
            },
            1920: {
                type: "slide",
                perPage: 4,
                arrows: false,
                gap: 31,
                autoWidth: true,
            },
            2560: {
                type: "slide",
                perPage: 4,
                arrows: false,
                gap: 31,
                autoWidth: true,
            }
        }
    }).mount();

    if ($(".personal__slider").length > 0) new Splide(".personal__slider", {
        gap: 35,
        pagination: false,
        perPage: 3,
        autoHeight: true,
        width: 1348,
        breakpoints: {
            320: {
                perPage: 1,
            },
            375: {
                perPage: 1,
            },
            425: {
                perPage: 1,
            },
            768: {
                perPage: 1,
            },
            1024: {
                perPage: 2,
            },
            1440: {
                perPage: 3,
            },
            2560: {
                perPage: 3,
            }
        }
    }).mount();

    if ($(".tour-gallary__slider").length > 0) new Splide(".tour-gallary__slider", {
        gap: 35,
        pagination: false,
        perPage: 3,
        autoHeight: true,
        width: 1348,
        breakpoints: {
            320: {
                perPage: 1,
            },
            375: {
                perPage: 1,
            },
            425: {
                perPage: 1,
            },
            768: {
                perPage: 1,
            },
            1024: {
                perPage: 2,
            },
            1440: {
                perPage: 3,
            },
            2560: {
                perPage: 3,
            }
        }
    }).mount();

    if ($(".tour-day-programm__gallary-slider1").length > 0) new Splide(".tour-day-programm__gallary-slider1", {
        gap: 35,
        pagination: false,
        perPage: 4,
        arrows: false,
        width: 1348,
        breakpoints: {
            375: {
                perPage: 1,
                arrows: true,
            },
            425: {
                perPage: 1,
                arrows: true,
            },
            768: {
                perPage: 1,
                arrows: true,
            },
            1024: {
                perPage: 1,
            },
        }
    }).mount();

    if ($(".tour-day-programm__gallary-slider2").length > 0) new Splide(".tour-day-programm__gallary-slider2", {
        gap: 35,
        pagination: false,
        perPage: 4,
        arrows: false,
        width: 1348,
        breakpoints: {
            375: {
                perPage: 1,
                arrows: true,
            },
            425: {
                perPage: 1,
            },
            768: {
                perPage: 1,
            },
            1024: {
                perPage: 1,
            },
        }
    }).mount();

    if ($(".tour-day-programm__gallary-slider3").length > 0) new Splide(".tour-day-programm__gallary-slider3", {
        gap: 35,
        pagination: false,
        perPage: 4,
        arrows: false,
        width: 1348,
        breakpoints: {
            375: {
                perPage: 1,
                arrows: true,
            },
            425: {
                perPage: 1,
            },
            768: {
                perPage: 1,
            },
            1024: {
                perPage: 1,
            },
        }
    }).mount();

    if ($(".tour-day-programm__gallary-slider4").length > 0) new Splide(".tour-day-programm__gallary-slider4", {
        gap: 35,
        pagination: false,
        perPage: 4,
        arrows: false,
        width: 1348,
        breakpoints: {
            375: {
                perPage: 1,
                arrows: true,
            },
            425: {
                perPage: 1,
            },
            768: {
                perPage: 1,
            },
            1024: {
                perPage: 1,
            },
        }
    }).mount();

    if ($("#map").length > 0) ymaps.ready(init);

    $(".agency-document__download").on("click", function () {
        window.location.href = `/api/files/download/${$(this).data("path")}`;
    });

    $(".search-tour__form").on("submit", function (e) {
        e.preventDefault();
        window.open(`https://samo.mercury-europe.ru/search_tour?TOURTYPE=0&CHECKIN_BEG=${begDate == undefined ? "" : begDate}&STATEINC=${to == undefined ? "" : to}&NIGHTS_FROM=${nights == undefined ? "" : nights}&CHECKIN_END=${endDate == undefined ? "" : endDate}&NIGHTS_TILL=${nights == undefined ? "" : nights}&ADULT=${adults == undefined ? "" : adults}&TOWNFROMINC=${from == undefined ? "" : from}`);
    });

    $(".footer__notification").on("submit", function (e) {
        e.preventDefault();
        $("#chose-user").show(300);
    });

    $("input[type='search']").on("keydown", function (e) {
        if (e.key === 'Enter') window.location.href = `/search?search=${$(this).val()}`;
    });

    $(".tour-card").on("click", function () {
        window.location.href = $(this).data("href");
    });

    /**
     * Обработка калькулятора в туре
     */
    let hotelCategory, hotel, meal, child = undefined;

    $('#datapicker-from').on('hide.daterangepicker', function (ev, picker) {
        begDate = picker.startDate.format('YYYYMMDD');
        // endDate = picker.startDate.clone().add(10, 'day').format('YYYYMMDD');
        endDate = picker.startDate.format('YYYYMMDD');
    });

    $(".search-tour__hotel-category-category .combobox__item").on("click", function () {
        hotelCategory = $(this).data("id");
        $(".search-tour__hotel .combobox-header__subtitle").text($(`.search-tour__hotel .combobox__item[data-star="${hotelCategory}"]`).text().replace(/\s{2,}/g, ""));
        $(".search-tour__hotel .combobox-header__subtitle").removeClass("combobox-header__subtitle_invisible");
        $(".search-tour__hotel .combobox-header__subtitle").css({
            "height": "21px !important",
            "overflow": "hidden",
        })
    });

    $(".search-tour__from .combobox__item").on("click", function () {
        from = $(this).data("id");
    });

    $(".search-tour__hotel .combobox__item").on("click", function () {
        hotel = $(this).data("id");
        $(".search-tour__hotel-category .combobox-header__subtitle").text($(`.search-tour__hotel-category .combobox__item[data-id="${$(this).data('star')}"]`).text());
        $(".search-tour__hotel-category .combobox-header__subtitle").removeClass("combobox-header__subtitle_invisible");
        $(".search-tour__hotel-category .combobox-header__subtitle").css({
            "height": "21px !important",
            "overflow": "hidden",
        })
    });

    $(".search-tour__feed .combobox__item").on("click", function () {
        meal = $(this).data("id");
    });

    $(".search-tour__nights .combobox__item").on("click", function () {
        nights = $(this).text().replace(/\s+/g, "");
    });

    $(".search-tour__children .combobox__item").on("click", function () {
        child = $(this).text().replace(/\s+/g, "");
    });

    $(".search-tour__tourist .combobox__item").on("click", function () {
        adults = $(this).text().replace(/\s+|[^0-9]+/g, "");
    });

    $(".tour-cost__update").on("click", function (e) {
        e.preventDefault();
        let country = $("#calc").data("country");
        if (from == undefined) from = $(".search-tour__from .combobox-header__subtitle").data("id");

        if (begDate == undefined) $(".tour-cost__date").css("border-right-color", "red");
        if (adults == undefined) $(".search-tour__tourist").css("border-right-color", "red");
        if (child == undefined) $(".search-tour__children").css("border-right-color", "red");
        if (nights == undefined) $(".search-tour__nights").css("border-right-color", "red");

        if (child == undefined || adults == undefined || nights == undefined || begDate == undefined)
            swal({
                icon: "error",
                title: "Заполните обязательные поля",
                // timer: 2000,
            });
        else $.ajax({
            type: "GET",
            url: "/api/samotour/getPrice",
            data: {
                from: from,
                begDate: begDate,
                endDate: endDate,
                country: country,
                nights: nights,
                hotelCategory: hotelCategory,
                hotel: hotel,
                adults: adults,
                child: child,
                meal: meal,
                tour: $(".tour-cost").data("tour"),
            },
            dataType: "json",
            success: function (response) {
                $("#calc").data("id", response.id);
                $(".tour-cost__value").text(`${response.price} руб.`);
            },
            error: function (xhr, textStatus, errorThrown) {
                $(".tour-cost__value").text("Н/Д");
                swal({
                    icon: "error",
                    title: "Не удалось найти тур",
                    // timer: 2000,
                });
            }
        });
    });

    $(".tour-cost__button").on("click", function (e) {
        e.preventDefault();
        let id = $("#calc").data("id")
        let country = $("#calc").data("country");
        from = $(".search-tour__from .combobox-header__subtitle").data("id");
        if (begDate == undefined) $(".tour-cost__date").css("border-right-color", "red");
        if (adults == undefined) $(".search-tour__tourist").css("border-right-color", "red");
        if (child == undefined) $(".search-tour__children").css("border-right-color", "red");
        if (nights == undefined) $(".search-tour__nights").css("border-right-color", "red");

        if (child == undefined || adults == undefined || nights == undefined || begDate == undefined)
            swal({
                icon: "error",
                title: "Заполните обязательные поля",
                // timer: 2000,
            });
        else {
            if ($(".tour-cost__value").text() == "Н/Д")
                swal({
                    title: "Обновите стоимость тура",
                    // timer: 2000,
                });
            else window.open(`https://samo.mercury-europe.ru/bron_person?CATCLAIM=${id}&CURRENCY=1&TOWNFROMINC=${from}&STATEINC=${country}&GUEST=1`);
        }
    });

    $(".tour-download").on("click", function () {
        window.open(`${location.origin}/files?url=${location.pathname.replace(/\/\w+\//, "")}`);
    });


    $(".profile-button").on("click", function () {

        window.axios.defaults.withCredential = true;
        window.axios.defaults.withXSRFToken = true;

        window.axios.post('/api/auth/check')
            .then(response => {
                console.log(response);
                window.location.href = `/pa/${response.data.url}`;
            })
            .catch(response => {
                $("#enter").show(300);
            });
    });

    $(".pa-exit-button").on("click", function () {
        window.axios.defaults.withCredential = true;
        window.axios.defaults.withXSRFToken = true;

        window.axios.post('/api/auth/logout')
            .then(response => {
                window.location.href = `/`;
            })
    });

    $(".registration__login-button").on("click", function (e) {
        e.preventDefault();
        $("#registration").hide(300);
        $("#enter").show(300);
    });

    $(".modal-header__exit").on("click", function () {
        $(this).parents(".modal-wrapper").hide(300);
    });

    $(".enter__register-button").on("click", function (e) {
        e.preventDefault();
        $("#enter").hide(300);
        $("#registration").show(300);
    });

    $(".modal-aggrees__description input[type='checkbox']").on("change", function () {
        if ($(this).prop("checked"))
            $(".modal-aggrees__checkbox").css("border-color", "#F3F3F3");
        else $(".modal-aggrees__checkbox").css("border-color", "#8D58E5");
    })

    $(".modal__aggrees input[type='checkbox']").on("change", function () {
        if ($(this).prop("checked"))
            $(".modal-aggrees__checkbox").css("border-color", "#F3F3F3");
        else $(".modal-aggrees__checkbox").css("border-color", "#8D58E5");
    })

    $(".modal__window input").on("cut copy paste input", function () {
        $(this).css("border-color", "transparent");
    })

    $(".registration__register-button").on("click", function (e) {
        e.preventDefault();

        let company = $(this).parents(".registration").find("input[name='company']"),
            address = $(this).parents(".registration").find("input[name='address']"),
            email = $(this).parents(".registration").find("input[name='email']"),
            phone = $(this).parents(".registration").find("input[name='phone']"),
            login = $(this).parents(".registration").find("input[name='login']"),
            password = $(this).parents(".registration").find("input[name='password']");

        if (!$("#law-aggree").prop('checked') || email.val() == "" || phone.val() == "" || login.val() == "" || phone.val() == "") {
            email.val() == "" ? email.css("border-right-color", "red") : null;
            phone.val() == "" ? phone.css("border-right-color", "red") : null;
            login.val() == "" ? login.css("border-right-color", "red") : null;
            password.val() == "" ? password.css("border-right-color", "red") : null;

            !$("#law-aggree").prop('checked') ? $(".modal-aggrees__checkbox").css("border-color", "red") : null;

            swal({
                icon: "error",
                title: "Заполните обязательные поля",
                // timer: 2000,
            });
            return;
        }

        window.axios.defaults.withCredential = true;
        window.axios.defaults.withXSRFToken = true;
        // window.axios.defaults.headers.common['Accept'] = 'text/html';

        const data = {
            name: $(this).parents(".registration").find("input[name='login']").val(),
            password: $(this).parents(".registration").find("input[name='password']").val(),
            company: $(this).parents(".registration").find("input[name='company']").val(),
            address: $(this).parents(".registration").find("input[name='address']").val(),
            email: $(this).parents(".registration").find("input[name='email']").val(),
            phone: $(this).parents(".registration").find("input[name='phone']").val(),
        };

        window.axios.post('/api/auth/signin', data)
            .then(response => {
                $(this).parents(".modal-wrapper").hide();
                $(".modal-notification__text span").text(response.data.email);
                $("#notification").show();
                $(this).parents(".registration").find("input").val("");
            })
            .catch(response => {
                swal({
                    icon: "error",
                    title: response.response.data.message,
                    // timer: 2000,
                });
                $(this).parents(".registration").find("input").val("");
            });
    });

    $(".enter__button").on("click", function (e) {
        e.preventDefault();

        window.axios.defaults.withCredential = true;
        window.axios.defaults.withXSRFToken = true;

        window.axios.get('/sanctum/csrf-cookie',).then(response => {
            const data = {
                name: $(this).parents(".enter__fields").find("input[name='login']").val(),
                password: $(this).parents(".enter__fields").find("input[name='password']").val(),
            };
            window.axios.post('/api/auth/login', data)
                .then(response => {
                    console.log(response);
                    window.location.href = `/pa/${response.data.url}`;
                    // $(this).parents(".modal-wrapper").hide(300);
                })
                .catch(response => {
                    swal({
                        icon: "error",
                        title: response.response.data.message,
                        // timer: 2000,
                    });
                });
        });

    });

    $(".enter__login-button").on("click", function (e) {
        e.preventDefault();
        $(this).parents(".modal-wrapper").hide(300);
        $("#reset-password-send-mail").show(300);
    })

    $(".reset-password-send-mail").on("submit", function (e) {
        e.preventDefault();

        $.ajax({
            type: "POST",
            url: "/api/auth/send-mail",
            data: {
                email: $(this).find("input[type='email']").val(),
            },
            dataType: "json",
            success: function (response) {
                $("#notification-small .modal-notification__text").text(response.message);
                $(this).parents(".modal-wrapper").hide();
                $("#notification-small").show();
            }.bind(this),
            error: function (response) {
                swal({
                    icon: "error",
                    title: response.responseJSON.message,
                    // timer: 2000,
                });
            }
        });
    })

    $(".reset-password").on("submit", function (e) {
        e.preventDefault();

        let token = window.location.href.match(/token=[a-zA-Z0-9]+/)[0].split("=")[1];

        $.ajax({
            type: "POST",
            url: "/api/auth/reset",
            data: {
                password: $(this).find("input[name='password']").val(),
                retypePassword: $(this).find("input[name='retype-password']").val(),
                token: token,
            },
            dataType: "json",
            success: function (response) {
                $("#notification-small .modal-notification__text").text(response.message);
                $(this).parents(".modal-wrapper").hide();
                $("#notification-small").show();
                setTimeout(() => {
                    window.location.href = window.location.origin;
                }, 500);
            }.bind(this),
            error: function (error) {
                swal({
                    icon: "error",
                    title: error.responseJSON.message,
                    // timer: 2000,
                });
            }
        });
    })

    $("#pa-button").on("click", function (e) {
        e.preventDefault();
        $("#hamburger").prop("checked", false);
        $("#enter").show(300);
    });

    $(".tour-country-type-block").on("click", function () {
        window.location.href = `${window.location.origin}${window.location.pathname}${$(this).data("href")}`;
    });

    $(".offer__button").on("click", function () {
        $("#feedback").show(300);
    });

    $(".feedback").on("submit", function (e) {
        e.preventDefault();

        let name = $(this).find("input[name='name']"),
            phone = $(this).find("input[name='phone']"),
            email = $(this).find("input[name='email']"),
            text = $(this).find("textarea[name='textarea']");

        if (!$("#law-aggree1").prop('checked')) {
            $(".modal-aggrees__checkbox").css("border-color", "red");

            swal({
                icon: 'error',
                title: "Подтвердите свое согласие",
                // timer: 2000,
            });

            return;
        }

        $.ajax({
            type: "POST",
            url: "/api/feedback/create",
            data: {
                name: name.val(),
                phone: phone.val(),
                email: email.val(),
                text: text.val(),
            },
            dataType: "json",
            success: function (response) {
                console.log(response);
                $("#notification-small .modal-notification__text").text(response.message);
                $(this).parents(".modal-wrapper").hide();
                $("#notification-small").show();
            }.bind(this)
        });
    })

    $(".tour-country-info").on("click", function (e) {
        e.preventDefault();
        if ($(this).data("url") != "")
            window.location.href = `/api/files/download/${$(this).data("url")}`;
    });

    $(".tour-tourist-reminder").on("click", function (e) {
        e.preventDefault();
        if ($(this).data("url") != "")
            window.location.href = `/api/files/download/${$(this).data("url")}`;
    });

    $(".services-country-tour__all-button").on("click", function () {
        if ($(this).html().match(/Просмотреть\sвсе\s+страны/)) {
            $(this).html($(this).html().replace(/Просмотреть\sвсе\s+страны/, 'Скрыть'));
            $(this).find("svg").css("transform", "rotate(-90deg)");
            $(this).parents(".services-country-tour").find(".service_country__sublist").animate({ "max-height": "250px" }, 1000);
        }
        else {
            $(this).html($(this).html().replace(/Скрыть/, 'Просмотреть все страны'));
            $(this).find("svg").css("transform", "rotate(90deg)");
            $(this).parents(".services-country-tour").find(".service_country__sublist").animate({ "max-height": "128px" }, 800);
        }
    });

    $(".services-type-tour__all-button").on("click", function () {
        if ($(this).html().match(/Просмотреть\sвсе\s+типы/)) {
            $(this).html($(this).html().replace(/Просмотреть\sвсе\s+типы/, 'Скрыть'));
            $(this).find("svg").css("transform", "rotate(-90deg)");
            $(".services-vacation-type__sublist").show(500);
        }
        else {
            $(this).html($(this).html().replace(/Скрыть/, 'Просмотреть все типы'));
            $(this).find("svg").css("transform", "rotate(90deg)");
            $(".services-vacation-type__sublist").hide(300);
        }
    });

    $(".mailling").on("submit", function (e) {
        e.preventDefault();

        let name = $(this).find("input[name='name']"),
            city = $(this).find("input[name='city']"),
            agent = $(this).find(".person__combobox"),
            email = $($(".footer__notification input[type='email']")[1]).val();

        if (!$("#law-aggree2").prop('checked') || agent.find(".combobox-header__subtitle").text() == "Кто вы?") {
            !$("#law-aggree2").prop('checked') ? $(".modal-aggrees__checkbox").css("border-color", "red") : null;
            agent.find(".combobox-header__subtitle").text() == "Кто вы?" ? agent.css("border-right-color", "red") : null;

            swal({
                icon: 'error',
                title: "Заполните обязательные поля",
                // timer: 2000,
            });

            return;
        }

        $.ajax({
            type: "POST",
            url: "/api/mailler/create",
            data: {
                name: name.val(),
                city: city.val(),
                email: email,
                agent: agent.find(".combobox-header__subtitle").text()
            },
            dataType: "json",
            success: function (response) {
                $("#notification-small .modal-notification__text").text(response.message);
                $(this).parents(".modal-wrapper").hide(300);
                $("#notification-small").show(300);
                $(this).prop("checked", false);
            }.bind(this)
        });

    });

});