@extends('mainpage')

@section('title',
    'Boardriders - сеть магазинов товаров для экстремального спорта - сноуборд и скейтборд : одежда, кеды
    и инвентарь Quiksilver, Roxy, DC, LibTech, GNU')

@section('content')

    <div class="cart">
        <div class="cart_left">
            <div class="cart_left_heaving_cart">Корзина</div>
            <div class="cart-items cart_left_items ">
            </div>
            <div class="cart_left_order">Оформление заказа</div>
            <div class="cart_left_delivery">
                <div class="cart_left_delivery_title">Пункт выдачи</div>
                <div class="cart_left_delivery_box">
                    <div class="cart_left_delivery_box_point">
                        <p>Место доставки:</p>
                        <p>Пятерочка</p>
                        <p>Труда, 13А</p>
                    </div>
                    <div class="cart_left_delivery_box_data">
                        <p>Ориентировочная дата доставки:</p>
                        <p>29.12.2024 (вс)</p>
                        <p>Заказ хранится 7 дней</p>
                    </div>
                </div>
            </div>
            <div class="cart_left_pay">
                <div class="cart_left_pay_heaving">Оплата</div>
                <div class="cart_left_pay_online">
                    <div class="cart_left_pay_online_title">Информация о карте</div>
                    <div class="cart_left_pay_online_box_pay">
                        <div class="cart_left_pay_online_img_cart">
                            <img src="{{ asset('img/info_cart.jpg') }}" alt="" class="pay_online_img_cart">
                        </div>
                        <div class="cart_left_pay_online_info">
                            <form action="" method="post">
                                <div class="cart_left_pay_online_info_name">
                                    <label for="">Имя</label>
                                    <input type="text" class="cart_left_pay_online_info_name_input">
                                </div>
                                <div class="cart_left_pay_online_info_name">
                                    <label for="">Номер карты</label>
                                    <input type="text" class="cart_left_pay_online_info_name_input">
                                </div>
                                <div class="cart_left_pay_online_info_srok">
                                    <div class="cart_left_pay_online_info_name">
                                        <label for="">Месяц и год</label>
                                        <input type="text" class="cart_left_pay_online_info_name_input_secret">
                                    </div>
                                    <div class="cart_left_pay_online_info_name">
                                        <label for="">Секретный код</label>
                                        <input type="text" class="cart_left_pay_online_info_name_input_secret">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cart_left_contact">
                <div class="cart_left_contact_heaving">Контакты</div>
                <div class="cart_left_contact_info">
                    <form action="" method="post">
                        <div class="cart_left_contact_info_box">
                            <label for="">Имя</label>
                            <input type="text" placeholder="Введите ваше имя" class="cart_left_contact_info_input" />
                        </div>
                        <div class="cart_left_contact_info_box">
                            <label for="">Фамилия</label>
                            <input type="text" placeholder="Введите ваше имя" class="cart_left_contact_info_input" />
                        </div>
                        <div class="cart_left_contact_info_box">
                            <label for="">Телефон для SMS уведомлений</label>
                            <input type="text" placeholder="Введите ваше имя" class="cart_left_contact_info_input" />
                        </div>
                        <div class="cart_left_contact_info_box">
                            <label for="">E-mail</label>
                            <input type="text" placeholder="Введите ваше имя" class="cart_left_contact_info_input" />
                        </div>
                        <div class="cart_left_contact_info_btn">Подтвердить</div>
                    </form>
                </div>
            </div>
        </div>
        <div class="cart_right">
            <div class="cart_right_order">Условия заказа</div>
            <div class="cart_right_itog">Итого: </div>
            <div class="cart_right_box_itog">
                <div class="cart_right_count_items cart-count">1 товар</div>
                <div class="cart_right_count_summa cart-total">0 ₽</div>
            </div>
            <div id="confirmButton" class="cart_right_place_order">Перейти к оформлению</div>
        </div>

    </div>
    <div class="modal-overlay" id="modalOverlay">
        <div class="modal-content">
            <span class="close-button" id="closeButton">&times;</span>
            <p>Ваш заказ принят!</p>
        </div>
    </div>

@endsection
