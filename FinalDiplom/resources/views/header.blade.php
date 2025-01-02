<div class="header">
    <div class="header_top_menu">
        <div class="header_top_menu_laocate">
            <div class="header_top_menu_laocate_left">
                <p><img src="{{ asset('img/locate.svg') }}" alt=""></p>
                <p>Ваш регион доставки:</p>
                <select name="" id="" class="select_region">
                    <option value="apple">Москва</option>
                    <option value="banana">Санкт-Петербург</option>
                    <option value="orange">Екатеринбург</option>
                    <option value="grape">Казань</option>
                </select>
            </div>
            <div class="header_top_menu_laocate_right">
                <p>Магазины</p>
                <p>Помощь</p>
                <p>Блоги</p>
            </div>
        </div>
        <div class="header_top_menu_info">
            <div class="header_top_menu_info_delivery">
                <p><img src="{{ asset('img/auto.svg') }}" alt=""></p>
                <p>Бесплатная доставка *</p>
            </div>
            <div class="header_top_menu_info_pay">
                <p><img src="{{ asset('img/pay.svg') }}" alt=""></p>
                <p>Оплата при получении</p>
            </div>
            <div class="header_top_menu_info_refund">
                <p><img src="{{ asset('img/phone.svg') }}" alt="" class="phone"></p>
                <p>8 (800) 000 00 00</p>
            </div>
        </div>
    </div>
    <div class="header_top_middle">
        <div class="header_top_middle_logo">
            <a href="/"><img src="{{ asset('img/logo.svg') }}" alt=""></a>
        </div>

        {{-- find --}}
        <div class="search-container header_top_middle_profile_find" >
            <p><img src="{{ asset('img/find.svg') }}" alt=""></p>
            <input type="text" id="searchInput" placeholder="Поиск товаров..." class="findInput">
            <div id="searchResults" class="search-results"></div>
        </div>
        {{-- find --}}

        <div class="header_top_middle_profile">
            @if (Auth::check())
                <div class="header_top_middle_profile_login">
                    <p><img src="{{ asset('img/login.svg') }}" alt=""></p>
                    <a href="/admin/" target='blank'>{{ auth()->user()->name }}</a>
                </div>
            @else
                <div class="header_top_middle_profile_login">
                    <p><img src="{{ asset('img/login.svg') }}" alt=""></p>
                    <a href="/register" target="blank">РЕГИСТРАЦИЯ</a>
                </div>
            @endif
            <div class="header_top_middle_profile_trash">
                <a href="/cart" class="header_top_middle_profile_trash">
                    <p><img src="{{ asset('img/trash.svg') }}" alt=""></p>
                    <p>КОРЗИНА</p>
                </a>
            </div>
        </div>
    </div>
    <div class="header_top_category">
        <a href="/snowboards">Сноуборд</a>
        <a href="/skis">Лыжи</a>
        <a href="/skateboards">Скейтборды</a>
        <a href="/longboards">Лонгборды</a>
        <a href="/surfings">Серфинг</a>
        <a href="/sups">Sup</a>
        <a href="/clothes">Одежда</a>
        <a href="/shoes">Обувь</a>
        <a href="/accessories">Аксессуары</a>
        <a href="/sellouts" class="header_top_category_sale">Распродажа</a>
    </div>
</div>
