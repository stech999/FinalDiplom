<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="{{ asset('style/main.css') }}">
    <link rel="stylesheet" href="{{ asset('style/content.css') }}">
    <link rel="stylesheet" href="{{ asset('style/footer.css') }}">
    <link rel="stylesheet" href="{{ asset('style/header.css') }}">
    <link rel="stylesheet" href="{{ asset('style/catalog.css') }}">
    <link rel="stylesheet" href="{{ asset('style/items.css') }}">
    <link rel="stylesheet" href="{{ asset('style/item.css') }}">
    <link rel="stylesheet" href="{{ asset('style/login.css') }}">
    <link rel="stylesheet" href="{{ asset('style/cart.css') }}">
    <link rel="stylesheet" href="{{ asset('style/cart_items.css') }}">

    @vite('resources/js/cart-save.js')
    @vite('resources/js/cart-display.js')
    @vite('resources/js/order.js')
    @vite('resources/js/find.js')
    @vite('resources/js/banner.js')
    @vite('resources/js/filter.js')

</head>

<body>
    <div class="center">
        <header>
            @include('header')
        </header>

        <content>
            @yield('content')
        </content>

        <footer>
            @include('footer')
        </footer>
    </div>
</body>

</html>