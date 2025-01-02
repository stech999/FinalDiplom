<!-- resources/views/auth/passwords/email.blade.php -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Восстановление пароля</title>
    <link rel="stylesheet" href="{{ asset('style/forgotPassword.css') }}">
</head>
<div class="forgotPassword">
    <div class="boxForgot">
        <h2>Восстановление пароля</h2>
        <form method="POST" action="{{ route('password.request') }}">
            @csrf
            <div class="boxEmail">
                <input type="email" name="" id="" required placeholder="Электронная почта"  class="boxForgotInput">
            </div>
            <button type="submit" class="boxEmailBtn">отправить</button>
        </form>
    </div>
</div>
