const mix = require('laravel-mix');

mix.js('resources/js/main.js', 'public/js')
    .js('resources/js/jquery-3.7.1.js', 'public/js')
    .css('resources/css/main.css', 'public/css')
    .css('resources/css/fonts.css', 'public/css')
    
    .version();