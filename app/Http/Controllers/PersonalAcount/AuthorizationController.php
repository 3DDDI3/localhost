<?php

namespace App\Http\Controllers\PersonalAcount;

use App\Http\Controllers\Controller;
use App\Models\User\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthorizationController extends Controller
{
    public function signin(Request $request)
    {
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ]);
        $user->createToken('App')->plainTextToken;
        response()->json(['message' => 'Вы успешно зарегистрировались'], 200);
    }

    public function login(Request $request)
    {
        if (!Auth::attempt($request->only(['name', 'password'])))
            return response()->json(['message' => "Неверный логин или пароль"], 401);
        session()->regenerate();
        $user = User::where(request()->only('name'))->first();
        // dd($request->user());
        $token = $user->createToken('MyApp')->plainTextToken;
        return response()->json(['token' => $token], 200)->withHeaders(['Authorization' => 'Bearer ' . $token]);
    }

    public function check()
    {
        return response()->json(['user' => request()->user()], 200);
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();
        return response([], 200);
    }
}
