<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Support\Facades\Route;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    protected function redirectTo($request)
    {
        $route = Route::currentRouteName(); //текущий мартрут

        if (! $request->expectsJson()) {

            switch($route) {
                case 'profile':
                    return route('main', ['login' => 1]);
                    break;
                default:
                    return route('admin.login');
                    break;
            }
        }
    }
}
