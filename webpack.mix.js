const mix = require('laravel-mix');

mix.js('resources/js/main.js', 'public/js')
    .js('resources/js/jquery-3.7.1.js', 'public/js')
    .css('resources/css/main.css', 'public/css')
    .css('resources/css/about.css', 'public/css')
    .css('resources/css/agency.css', 'public/css')
    .css('resources/css/blog.css', 'public/css')
    .css('resources/css/contacts.css', 'public/css')
    .css('resources/css/news.css', 'public/css')
    .css('resources/css/tour.css', 'public/css')
    .css('resources/css/tours.css', 'public/css')
    .css('resources/css/fonts.css', 'public/css')
    .css('resources/css/search.css', 'public/css')

    .version();