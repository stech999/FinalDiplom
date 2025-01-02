@extends('mainpage')

@section('title',
    'Boardriders - сеть магазинов товаров для экстремального спорта - сноуборд и скейтборд : одежда, кеды
    и инвентарь Quiksilver, Roxy, DC, LibTech, GNU')

@section('content')
    <div class="catalog">
        <div class="catalog_banner">
            <div class="catalog_banner_promo">
                <img src="{{ asset('img/catalog_promo1.svg') }}" alt="">
                <img src="{{ asset('img/catalog_promo2.svg') }}" alt="">
                <img src="{{ asset('img/catalog_promo3.svg') }}" alt="">
            </div>
            <div class="catalog_banner_title">
                <p class="catalog_banner_title_text">Название акции</p>
                <p class="catalog_banner_title_text">Название акции</p>
                <p class="catalog_banner_title_text">Название акции</p>
            </div>
        </div>
        <div class="catalog_settings">
            <div class="catalog_settings_title">
                Подбери борд
            </div>
            <div class="catalog_settings_human_param">
                <div class="catalog_settings_human_param_number">1</div>
                <div class="catalog_settings_human_param_block_mid">
                    <div class="catalog_settings_human_param_block1">
                        <div class="catalog_settings_human_param_number_set">Укажите свой рост и вес</div>
                    </div>
                    <div class="catalog_settings_human_param_block2">
                        <div class="catalog_settings_human_param_height">Рост: 190 см</div>
                        <div class="catalog_settings_human_param_number_weight">Вес: 300кг</div>
                    </div>
                </div>
                <div class="catalog_settings_human_param_number_icon">
                    <img src="{{ asset('img/human_param_number_icon.svg') }}" alt="">
                </div>
            </div>
            <div class="catalog_settings_place">
                <div class="catalog_settings_place_title">
                    2
                </div>
                <div class="catalog_settings_place_mid">
                    <div class="catalog_settings_place_mid_block1">
                        Где планируете кататься
                    </div>
                    <div class="catalog_settings_place_mid_block2">
                        Укажите место
                    </div>
                </div>
                <div class="catalog_settings_place_icon">
                    <img src="{{ asset('img/catalog_settings_place_icon.svg') }}" alt="">
                </div>
            </div>
            <div class="catalog_settings_level">
                <div class="catalog_settings_level_title">
                    3
                </div>
                <div class="catalog_settings_level_mid">
                    <div class="catalog_settings_level_mid_block1">
                        Ваш уровень катании
                    </div>
                    <div class="catalog_settings_level_mid_block2">
                        Укажите ваш уровень
                    </div>
                </div>
                <div class="catalog_settings_level_icon">
                    <img src="{{ asset('img/catalog_settings_level_icon.svg') }}" alt="">
                </div>
            </div>
        </div>
        <div class="catalog_sort">
            @if (!request()->is('sellouts'))
                <div>
                    <a
                        href="{{ request()->fullUrlWithQuery(['sort' => 'title', 'direction' => $direction === 'asc' ? 'desc' : 'asc']) }}">
                        Сортировать по названию {{ $sort === 'title' ? ($direction === 'asc' ? '⬆' : '⬇') : '' }}
                    </a>
                    <a
                        href="{{ request()->fullUrlWithQuery(['sort' => 'price', 'direction' => $direction === 'asc' ? 'desc' : 'asc']) }}">
                        Сортировать по цене {{ $sort === 'price' ? ($direction === 'asc' ? '⬆' : '⬇') : '' }}
                    </a>
                    <a
                        href="{{ request()->fullUrlWithQuery(['sort' => 'color', 'direction' => $direction === 'asc' ? 'desc' : 'asc']) }}">
                        Сортировать по цвету {{ $sort === 'color' ? ($direction === 'asc' ? '⬆' : '⬇') : '' }}
                    </a>
                </div>
            @endif
        </div>
        <div class="catalog_box">
            @if (request()->is('sellouts'))
                <div id="products-list" class="products-container">
                    @foreach ($allProductsPaginated as $item)
                        @if ($item instanceof \App\Models\Snow)
                            @include('items.snowboards', ['items' => collect([$item])])
                        @elseif ($item instanceof \App\Models\Ski)
                            @include('items.skis', ['items' => collect([$item])])
                        @elseif ($item instanceof \App\Models\Skateboard)
                            @include('items.skateboards', ['items' => collect([$item])])
                        @elseif ($item instanceof \App\Models\Longboard)
                            @include('items.longboards', ['items' => collect([$item])])
                        @elseif ($item instanceof \App\Models\Surfing)
                            @include('items.surfings', ['items' => collect([$item])])
                        @elseif ($item instanceof \App\Models\Sup)
                            @include('items.sups', ['items' => collect([$item])])
                        @elseif ($item instanceof \App\Models\Clothes)
                            @include('items.clothes', ['items' => collect([$item])])
                        @elseif ($item instanceof \App\Models\Shoe)
                            @include('items.shoes', ['items' => collect([$item])])
                        @elseif ($item instanceof \App\Models\Accessorie)
                            @include('items.accessories', ['items' => collect([$item])])
                        @endif
                    @endforeach
                </div>
                <nav class="pagination">
                    {{ $allProductsPaginated->links('vendor.pagination.paginationCustom') }}
                </nav>
            @else
                <div id="products-list" class="products-container">
                    @include('items.snowboards', ['items' => $snowboards])
                    @include('items.skis', ['items' => $skis])
                    @include('items.skateboards', ['items' => $skateboards])
                    @include('items.longboards', ['items' => $longboards])
                    @include('items.surfings', ['items' => $surfings])
                    @include('items.sups', ['items' => $sups])
                    @include('items.clothes', ['items' => $clothes])
                    @include('items.shoes', ['items' => $shoes])
                    @include('items.accessories', ['items' => $accessories])
                </div>
                <nav class="pagination">
                    @php
                        $paginator = null;
                        if (isset($snowboards) && method_exists($snowboards, 'links')) {
                            $paginator = $snowboards;
                        } elseif (isset($skis) && method_exists($skis, 'links')) {
                            $paginator = $skis;
                        } elseif (isset($skateboards) && method_exists($skateboards, 'links')) {
                            $paginator = $skateboards;
                        } elseif (isset($longboards) && method_exists($longboards, 'links')) {
                            $paginator = $longboards;
                        } elseif (isset($surfings) && method_exists($surfings, 'links')) {
                            $paginator = $surfings;
                        } elseif (isset($sups) && method_exists($sups, 'links')) {
                            $paginator = $sups;
                        } elseif (isset($clothes) && method_exists($clothes, 'links')) {
                            $paginator = $clothes;
                        } elseif (isset($shoes) && method_exists($shoes, 'links')) {
                            $paginator = $shoes;
                        } elseif (isset($accessories) && method_exists($accessories, 'links')) {
                            $paginator = $accessories;
                        }
                    @endphp
                    @if (isset($paginator) && method_exists($paginator, 'links'))
                        {{ $paginator->links('vendor.pagination.paginationCustom') }}
                    @endif
                </nav>
            @endif
        </div>
    </div>
@endsection
