<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вход</title>
    <link rel="stylesheet" href="{{ asset('style/login.css') }}">
</head>

<body>
    <div class="centerLogin">
        <div class="loginBox">
            {{-- <div class="boxTitle"><b>ВХОД</b></div> --}}
            <form action="{{ route('login') }}" method="POST">
                @csrf
                <div class="boxInput">
                    <label for="email" class="boxText"><b>E-mail</b></label>
                    <input type="email" name="email" id="email" class="boxInputSize" required>
                </div>
                <div class="boxInput">
                    <label for="password" class="boxText"><b>Пароль</b></label>
                    <input type="password" name="password" id="password" class="boxInputSize" required>
                </div>

                <div class="boxRemember">
                    <!-- Remember Me -->
                    <div class="boxBottom">
                        <label for="remember_me" class="">
                            <input id="" type="checkbox" class="" name="remember">
                            <span class=""><b>{{ __('Запомнить') }}</b></span>
                        </label>

                    </div>

                    <!-- Forgot your password -->
                    <div class="boxBottom">
                        {{-- @if (Route::has('password.request'))
                            <a class="" href="{{ route('password.request') }}">
                                <b>{{ __('Забыл пароль?') }}</b>
                            </a>
                        @endif --}}
                        <a href="/password/reset">Забыл пароль?</a>
                    </div>
                </div>
                <button type="submit" class="boxBtn"><b>Войти</b></button>
            </form>
            @if ($errors->any())
                <div class="">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
        </div>
    </div>
</body>

</html>
