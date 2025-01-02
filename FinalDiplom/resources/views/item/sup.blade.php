@extends('mainpage')

@section('title',
    'Boardriders - сеть магазинов товаров для экстремального спорта - сноуборд и скейтборд : одежда, кеды
    и инвентарь Quiksilver, Roxy, DC, LibTech, GNU')

@section('content')

    <div class="show">
        <div class="show_left_box">
            <div class="show_left_box_single_img">
                <img src="{{ asset('storage/' . $items->img) }}" alt="{{ $items->title }}" class="box_img">
            </div>
            <div class="show_desc">
                <p class="show_desc_title">О товаре</p>
                <p class="show_desc_info">{{ $items->desc }}</p>
            </div>
            <div class="show_img_box">
                <div class="show_img_box_pic">
                    @if ($items->img_lots != null)
                        @foreach (json_decode($items->img_lots) as $img)
                            <img class="show_img" src="{{ asset('storage/' . $img) }}" alt="{{ $items->title }}"
                                class="box_img">
                        @endforeach
                    @else
                        <span style="align-content: center"><b>Картинки скоро будут загружены</b></span>
                    @endif
                </div>
            </div>
        </div>
        <div class="show_right_box" data-product-id="{{ $items->id }}" data-category-id="sup">
            <div class="show_right_box_title">{{ $items->title }}</div>
            <div class="show_right_box_price">
                @if ($items->price_discount != null)
                    <p class="show_right_box_old_price">
                        {{ number_format($items->price, 0, '.', ' ') . ' ₽' }}
                    </p>
                    <p class="show_right_box_price_summa summa_item">
                        <b>{{ number_format($items->price - ($items->price * $items->price_discount) / 100, 0, '.', ' ') . ' ₽' }}</b>
                    </p>
                @else
                    <p class="show_right_box_price_summa_noSale summa_item">
                        <b>{{ number_format($items->price, 0, '.', ' ') . ' ₽' }}</b>
                    </p>
                @endif
            </div>
            <div class="show_right_box_line"></div>
            <div class="show_right_box_color">Цвет: {{ $items->color_id }}</div>
            <div class="show_right_box_brend">Брэнд: {{ $items->brand_id }}</div>
            <div class="show_right_box_title_size">Размер: {{ $items->size_id }}</div>
            <div class="show_right_box_line"></div>
            <div class="show_right_box_choisePay">
                <div class="show_right_box_choisePay_title">
                    Варианты оплаты:
                </div>
                <div class="show_right_box_choisePay_box">
                    <div class="show_right_box_choisePay_box_cart">
                        <img class="choisePay_box_cart_img" src="{{ asset('img/card.svg') }}" alt="{{ $items->title }}">
                    </div>
                    <div class="show_right_box_choisePay_box_desc">
                        Картой на сайте (Visa, Mastercard, МИР)<br>
                        Со скидкой -10%
                    </div>
                </div>
                <div class="show_right_box_choisePay_box">
                    <div class="show_right_box_choisePay_box_cart">
                        <img class="choisePay_box_cart_img" src="{{ asset('img/paymant_cash.svg') }}"
                            alt="{{ $items->title }}">
                    </div>
                    <div class="show_right_box_choisePay_box_desc">
                        Долями: 4 платежа без комиссий и процентов
                    </div>
                </div>

            </div>
            <button class="add-to-cart show_right_box_cart">Оформить заказ</button>

        </div>
    </div>

@endsection
