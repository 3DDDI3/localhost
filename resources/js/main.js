window.$ = window.jQuery = require('jquery');

window.moment = require('moment');
window.daterangepicker = require('daterangepicker');

import "@splidejs/splide/css";
import Splide from "@splidejs/splide";

$(function () {
    let combobox, search = undefined;

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

    $(".combobox__item").on("click", function () {
        $(this).parents(".combobox").find(".combobox-header__title").css({
            "font-size": "13px",
        });
        $(this).parents(".combobox").css({
            "border-bottom-color": "transparent",
            // "height": "48px",
        });
        $(this).parents(".combobox").find(".combobox-header__subtitle").text($(this).text());
        $(this).parents(".combobox").find(".combobox-header__subtitle").removeClass("combobox-header__subtitle_invisible");
    });

    $(document).on("mouseup", function (e) {
        if (combobox != undefined && !$(combobox).is(e.target) && $(combobox).parents(".combobox").has(e.target).length === 0) {
            $(combobox).parents(".combobox").css({
                "border-bottom-color": "transparent",
            });
            $(combobox).find(".combobox__list").addClass("combobox__list_invisible");
            $(combobox).find(".combobox__item").removeClass("combobox__item_visible");
            $(combobox).find(".combobox-header__icon").css({
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

    $('input[name="tour_datefilter"]').daterangepicker({
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

    $('input[name="datefilter"]').on('hide.daterangepicker', function (ev, picker) {
        $(this).parents("label").find(".search-tour-dates__subtitle").text(`${picker.startDate.format('DD.MM')} - ${picker.endDate.format('DD.MM')}`);
        $(".search-tour-nights__subtitle").text(`${Math.round(Number(picker.endDate - picker.startDate) / (1000 * 60 * 60 * 24)) - 1}`);
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

    $(".popular-tours__tour-card").on("mouseenter", function () {
        $(this).css("width", "500px");
    });

    $(".tour-day-programm__text-description").on("click", function () {
        let block = $(this).parent().find('.tour-day-programm__description');
        if ($(block).css("display") == "none") {
            $(block).show('slow');
            $(this).css({
                "padding-bottom": "60px",
            });
            $(this).parent().find(".tour-day-programm__text-description svg").css({
                'transform': 'rotate(180deg)'
            });
        } else {
            $(block).hide('slow');
            $(this).css({
                "padding-bottom": "45px",
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

    if ($(".sliders").length > 0) new Splide('.sliders', {
        pagination: false,
        type: 'loop',
        padding: '30rem',
        // fixedWidth: 1000
        breakpoints: {
            375: {
                height: 462,
                perPage: 1,
                padding: 0,
                type: 'slide',
            },
            425: {
                height: 462,
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
                height: 462,
                padding: "18em",
                type: 'loop',
            },
            1250: {
                autoHeight: true,
                perPage: 1,
                padding: "18em",
                type: 'loop',
            },
            1300: {
                autoHeight: true,
                perPage: 1,
                padding: "20em",
                type: 'loop',
            },
            1920: {
                autoHeight: true,
                perPage: 1,
                padding: "21em",
                type: 'loop',
            }
        },
        height: 779
    }).mount();

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
        }
    }).mount();

    if ($(".search-tour-buttons__slider").length > 0) new Splide(".search-tour-buttons__slider", {
        pagination: false,
        arrows: false,
        type: 'slide',
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
                perPage: 2,
                arrows: false,
                gap: 31,
                autoWidth: true,
                padding: {
                    left: 40,
                },
            },
            768: {
                type: "slide",
                perPage: 4,
                arrows: false,
                gap: 31,
                autoWidth: true,
                padding: {
                    left: 40,
                },
            },
            1024: {
                type: "slide",
                perPage: 4,
                arrows: false,
                gap: 31,
                autoWidth: true,
                padding: {
                    left: 40,
                },
            },
            1350: {
                type: "slide",
                perPage: 'auto',
                arrows: false,
                padding: {
                    left: 10,
                },
                gap: 35,
            },
            1920: {
                type: "slide",
                perPage: 'auto',
                arrows: false,
                padding: {
                    left: 10,
                },
                gap: 35,
            },
            2560: {
                type: "slide",
                perPage: 'auto',
                arrows: false,
                padding: {
                    left: 10,
                },
                gap: 35,
            }
        }
    }).mount();


    ymaps.ready(init);
});


function init() {
    let center = [59.911833615112705, 30.31557668469041];
    let map = new ymaps.Map('map', {
        center: center,
        zoom: 19
    });

    let placemark = new ymaps.Placemark(center, {}, {
        iconLayout: 'default#image',
        iconImageHref: '/images/marker.svg',
        iconImageSize: [200, 150],
        iconImageOffset: [-140, -130]
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

