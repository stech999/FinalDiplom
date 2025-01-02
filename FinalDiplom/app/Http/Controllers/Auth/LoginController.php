<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function showLoginForm()
    {
        return view('auth.login'); // Убедитесь, что представление существует
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            // Успешный вход, перенаправьте пользователя
            return redirect()->intended('/'); // Замените 'dashboard' на нужный маршрут
        }

        // Если аутентификация не удалась, верните назад с ошибкой
        return back()->withErrors([
            'email' => 'Неверные учетные данные.',
        ]);
    }

    public function logout(Request $request)
    {
        Auth::logout();
        return redirect('/'); // Перенаправьте на главную страницу или другую
    }
}
