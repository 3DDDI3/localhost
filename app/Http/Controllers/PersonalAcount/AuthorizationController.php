<?php

namespace App\Http\Controllers\PersonalAcount;

use App\Http\Controllers\Controller;
use App\Mail\PasswordResetMail;
use App\Mail\RegistrationAgentMail;
use App\Mail\RegistrationMail;
use App\Models\ResetPassword;
use App\Models\Services\Agent;
use App\Models\User\User;
use App\View\Components\blocks\notification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\View\ComponentAttributeBag;

class AuthorizationController extends Controller
{
    public function signin(Request $request)
    {
        if (User::query()->where([
            'name' => $request->name,
        ])->orWhere(['email' => $request->email])->count() > 0)
            return response()->json(['message' => 'Пользователь с такими логином и/или email уже существует'], 401);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ]);

        $agent = new Agent();

        $agent->fill([
            'user_id' => $user->id,
            'url' => str_slug($request->name),
            'isActive' => 1,
        ]);

        if ($request->company != null) $agent->name = $request->company;
        if ($request->address != null) $agent->address = $request->address;
        if ($request->phone != null) $agent->phone = $request->phone;

        $agent->save();

        Mail::to(config('mail.from.address'))->send(new RegistrationMail($agent));
        Mail::to($request->email)->send(new RegistrationAgentMail($request));

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
        if (!Auth::attempt($request->only(['name', 'password'])))
            return response()->json(['message' => "Неверный логин или пароль"], 401);

        $user = User::query()
            ->where(request()->only('name'))
            ->first();

        if ($user->agent == null)
            return response()->json(['message' => 'Неверный логин или пароль'], 401);

        if (!$user->agent->isActive)
            return response()->json(['message' => 'Сервис временно не доступен, попробуйте позднее'], 401);

        $user->createToken('App')->plainTextToken;

        if ($request->expectsJson())
            return response()->json(['url' => $user->agent->url], 200);
    }

    public function check(Request $request)
    {
        $agent = $request->user()->agent;
        if (!$agent->isActive) return response([], 401);

        return response()->json(['url' => $request->user()->agent->url]);
    }

    public function logout(Request $request)
    {
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return response(status: 200);
    }

    public function sendMail(Request $request)
    {
        if (User::query()->where([
            'email' => $request->email,
        ])->count() == 0)
            return response()->json(['message' => 'Пользователя с таким email не существует'], 400);

        $token = str_random();
        while (ResetPassword::query()->where(['email' => $token])->count() > 0) {
            $token = str_random();
        }

        $resetPassword = ResetPassword::create([
            'email' => $request->email,
            'token' => $token,
        ]);

        Mail::to($resetPassword->email)->send(new PasswordResetMail($resetPassword));

        return response()->json(['message' => 'На почту выслано сообщение']);
    }

    public function reset(Request $request)
    {
        if ($request->password != $request->retypePassword)
            return response(['message' => 'Пароли не совпадают'], 400);

        $user = User::query()
            ->where(
                ['email' => ResetPassword::query()
                    ->where(['token' => $request->token])
                    ->first()
                    ->email]
            )->first();

        $user->fill(['password' => Hash::make($request->password)])
            ->save();

        ResetPassword::query()->where(['token' => $request->token])->delete();

        return response()->json(['message' => 'Пароль успешно изменен'], 200);
    }
}
