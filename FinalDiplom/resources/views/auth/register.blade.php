<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Регистраця</title>
    <link rel="stylesheet" href="{{ asset('style/registration.css') }}">
</head>

<div class="boxReg">
    <div class="boxRegForm">
        <h2>Регистраця</h2>
        <form method="POST" action="{{ route('register') }}" class="regBoxIndent">
            @csrf
            <!-- Name -->
            <div class="boxRegFormName">
                <span for="name" class="">Имя</span>
                <input class="boxRegFormInput" type="text" name="name" required />
                <x-input-error :messages="$errors->get('name')" class="boxRegFormInput" />
            </div>

            <!-- Email Address -->
            <div class="boxRegFormName">
                <x-input-label for="email" :value="__('Email')" />
                <x-text-input id="email" class="boxRegFormInput" type="email" name="email" :value="old('email')" required
                    autocomplete="username" />
                <x-input-error :messages="$errors->get('email')" class="" />
            </div>

            <!-- Password -->
            <div class="boxRegFormName">
                <x-input-label for="password" :value="__('Пароль')" />
                <x-text-input id="password" class="boxRegFormInput" type="password" name="password" required
                    autocomplete="new-password" />
                <x-input-error :messages="$errors->get('password')" class="" />
            </div>

            <!-- Confirm Password -->
            <div class="boxRegFormName">
                <x-input-label for="password_confirmation" :value="__('Подтвердите пароль')" />

                <x-text-input id="password_confirmation" class="boxRegFormInput" type="password" name="password_confirmation"
                    required autocomplete="new-password" />

                <x-input-error :messages="$errors->get('password_confirmation')" class="" />
            </div>

            <div class="regBoxAcc">
                <a class="" href="{{ route('login') }}">
                    {{ __('Уже имеется аккаунт?') }}
                </a>

                <x-primary-button class="regBoxBtn">
                    {{ __('Регистрация') }}
                </x-primary-button>
            </div>
        </form>
    </div>
</div>
