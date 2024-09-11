<?php

namespace App\Http\Controllers\PersonalAcount;

use App\Http\Controllers\Controller;
use App\Models\Services\Agent;
use App\Models\User\User;
use App\View\Components\blocks\notification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Hash;
use Illuminate\View\ComponentAttributeBag;

class AuthorizationController extends Controller
{
    public function signin(Request $request)
    {
        if (User::query()->where([
            'name' => $request->name,
        ])->orWhere(['email' => $request->email])->count() > 0)
            return response()->json(['message' => 'Пользователь с такими данными уже существует'], 401);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ]);

        $agent = new Agent();

        $agent->fill([
            'user_id' => $user->id,
            'url' => str_slug($request->name),
        ]);

        if ($request->company != null) $agent->name = $request->company;
        if ($request->address != null) $agent->address = $request->addres;
        if ($request->phone != null) $agent->phone = $request->phone;

        $agent->save();

        $user->createToken('App')->plainTextToken;

        if ($request->expectsJson())
            return response()->json([
                'title' => 'Спасибо за регистрацию',
                'subtitle' => 'Ваша заяка на рассмотрении',
                'text' => 'Мы пришлем подтверждение на электронную почту',
                'email' => $request->email
            ], 200);
    }

    public function login(Request $request)
    {
        // $request->session()->flush();
        // Cookie::forget('new_session');
        if (!Auth::attempt($request->only(['name', 'password'])))
            return response()->json(['message' => "Неверный логин или пароль"], 401);
        // $request->session()->regenerate();
        $user = User::where(request()->only('name'))->first();
        $user->createToken('App')->plainTextToken;

        if ($request->expectsJson())
            return response(200);
    }

    public function check(Request $request)
    {
        return response()->json(['url' => $request->user()->agent->url]);
    }

    public function logout(Request $request)
    {
        $request->user()->tokens()->delete();
        return response(status: 200);
    }

    public function reset(Request $request)
    {
        $user = User::query()
            ->where(['name' => $request->login])
            ->first();

        if (!$user) return response()->json(['message' => 'Неверный паоль и/или логин'], 400);

        $user->fill(['password' => Hash::make($request->password)])
            ->save();

        return response()->json(['message' => 'Смена пароля прошла успешно'], 200);
    }
}
