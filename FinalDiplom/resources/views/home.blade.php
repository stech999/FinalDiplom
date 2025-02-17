@extends('mainpage')

@section('title',
    'Boardriders - сеть магазинов товаров для экстремального спорта - сноуборд и скейтборд : одежда, кеды
    и инвентарь Quiksilver, Roxy, DC, LibTech, GNU')

@section('content')
    <div class="carousel-container">
        <div class="carousel-track">
            @foreach ($banners as $banner)
                <div class="carousel-slide" data-index="{{ $loop->index }}">
                    <img src="{{ asset('storage/' . $banner->banIMG) }}" alt="{{ $banner->title }}" class="imgBanner">
                </div>
            @endforeach
        </div>
        <button class="carousel-button carousel-prev">❮</button>
        <button class="carousel-button carousel-next">❯</button>
    </div>

    <div class="content_logo_company">
        <p><img src="{{ asset('img/logo1.svg') }}" alt=""></p>
        <p><img src="{{ asset('img/logo2.svg') }}" alt=""></p>
        <p><img src="{{ asset('img/logo3.svg') }}" alt=""></p>
        <p><img src="{{ asset('img/logo4.svg') }}" alt=""></p>
        <p><img src="{{ asset('img/logo5.svg') }}" alt=""></p>
        <p><img src="{{ asset('img/logo6.svg') }}" alt=""></p>
        <p><img src="{{ asset('img/logo7.svg') }}" alt=""></p>
        <p><img src="{{ asset('img/logo8.svg') }}" alt=""></p>
        <p><img src="{{ asset('img/logo9.svg') }}" alt=""></p>
        <p><img src="{{ asset('img/logo10.svg') }}" alt=""></p>
    </div>
    <div class="content_promo">
        <div class="content_promo_left">
            <div class="content_promo_img">
                <img src="{{ asset('img/promo1.svg') }}" alt="">
            </div>
            <div class="content_promo_text">
                НАЗВАНИЕ АКЦИИ №1
            </div>
        </div>
        <div class="content_promo_right">
            <div class="content_promo_right">
                <div class="content_promo_img">
                    <img src="{{ asset('img/promo2.svg') }}" alt="">
                </div>
                <div class="content_promo_text">
                    НАЗВАНИЕ АКЦИИ №2
                </div>
            </div>
        </div>
    </div>
    <div class="content_new_products">
        <p>Новинки</p>
    </div>
    <div class="content_new_items_carousel">
        <div class="content_new_products_carousel">
            <div class="content_new_products_carousel_img">
                <img src="{{ asset('img/newItem1.svg') }}" alt="">
            </div>
            <div class="content_new_products_carousel_fav">
                <img src="{{ asset('img/Favourites_Normal.svg') }}" alt="">
            </div>
            <div class="content_new_products_carousel_block_descrp">
                <div class="content_new_products_carousel_title">
                    LIB TECH
                </div>
                <div class="content_new_products_carousel_descrip">
                    Мужской Сноуборд
                </div>
                <div class="content_new_products_carousel_price">
                    34392 ₽
                </div>
            </div>
        </div>
        <div class="content_new_products_carousel">
            <div class="content_new_products_carousel_img">
                <img src="{{ asset('img/newItem2.svg') }}" alt="">
            </div>
            <div class="content_new_products_carousel_fav">
                <img src="{{ asset('img/Favourites_Normal.svg') }}" alt="">
            </div>
            <div class="content_new_products_carousel_block_descrp">
                <div class="content_new_products_carousel_title">
                    LIB TECH
                </div>
                <div class="content_new_products_carousel_descrip">
                    Мужской Сноуборд
                </div>
                <div class="content_new_products_carousel_price">
                    34392 ₽
                </div>
            </div>
        </div>
        <div class="content_new_products_carousel">
            <div class="content_new_products_carousel_img">
                <img src="{{ asset('img/newItem3.svg') }}" alt="">
            </div>
            <div class="content_new_products_carousel_fav">
                <img src="{{ asset('img/Favourites_Normal.svg') }}" alt="">
            </div>
            <div class="content_new_products_carousel_block_descrp">
                <div class="content_new_products_carousel_title">
                    LIB TECH
                </div>
                <div class="content_new_products_carousel_descrip">
                    Мужской Сноуборд
                </div>
                <div class="content_new_products_carousel_price">
                    34392 ₽
                </div>
            </div>
        </div>
        <div class="content_new_products_carousel">
            <div class="content_new_products_carousel_img">
                <img src="{{ asset('img/newItem4.svg') }}" alt="">
            </div>
            <div class="content_new_products_carousel_fav">
                <img src="{{ asset('img/Favourites_Normal.svg') }}" alt="">
            </div>
            <div class="content_new_products_carousel_block_descrp">
                <div class="content_new_products_carousel_title">
                    LIB TECH
                </div>
                <div class="content_new_products_carousel_descrip">
                    Мужской Сноуборд
                </div>
                <div class="content_new_products_carousel_price">
                    34392 ₽
                </div>
            </div>
        </div>
    </div>
    <div class="content_more_items">
        <a href="/snowboards">
            <button class="content_more_items_button">
                Показать больше
            </button>
        </a>
    </div>
    <div class="content_middle_promo">
        <div class="content_middle_promo_img">
            <img src="{{ asset('img/promo_middle.svg') }}" alt="">
        </div>
        <div class="content_middle_promo_logo">
            <img src="{{ asset('img/promo_middle_logo.svg') }}" alt="">
        </div>
        <div class="content_middle_promo_title">
            Название Акции
        </div>
        <div class="content_middle_promo_descr">
            Меня не спрашивали, а надо было спросить, что означает имя Заратустры именно в моих устах — в устах
            первого
            имморалиста: ведь то, в чём состоит неслыханная уникальность этого перса в истории, являет собою
            противоположность как раз этому.
        </div>
    </div>
    <div class="content_popular_collection">
        <div class="content_popular_collection_title">
            DC Shoes популярное в коллекции
        </div>
        <div class="content_popular_collection_items">
            <div class="content_popular_collection_items_carousel">
                <div class="content_popular_collection_items_img">
                    <img src="{{ asset('img/popular_item.svg') }}" alt="">
                </div>
                <div class="content_new_products_carousel_sticker_sale">
                    -50%
                </div>
                <div class="content_popular_collection_items_fav">
                    <img src="{{ asset('img/Favourites_Normal.svg') }}" alt="">
                </div>
                <div class="content_new_products_carousel_block_descrp">
                    <div class="content_new_products_carousel_title">
                        LIB TECH
                    </div>
                    <div class="content_new_products_carousel_descrip">
                        Мужской Сноуборд
                    </div>
                    <div class="content_popular_collection_items_price">
                        <p class="content_new_products_carousel_old_price">34392 ₽</p>
                        <p class="content_new_products_carousel_new_price">17392 ₽</p>
                    </div>
                </div>
            </div>
            <div class="content_popular_collection_items_carousel">
                <div class="content_popular_collection_items_img">
                    <img src="{{ asset('img/popular_item2.svg') }}" alt="">
                </div>
                <div class="content_new_products_carousel_sticker_sale">
                    -50%
                </div>
                <div class="content_popular_collection_items_fav">
                    <img src="{{ asset('img/Favourites_Normal.svg') }}" alt="">
                </div>
                <div class="content_new_products_carousel_block_descrp">
                    <div class="content_new_products_carousel_title">
                        LIB TECH
                    </div>
                    <div class="content_new_products_carousel_descrip">
                        Мужской Сноуборд
                    </div>
                    <div class="content_popular_collection_items_price">
                        <p class="content_new_products_carousel_old_price">34392 ₽</p>
                        <p class="content_new_products_carousel_new_price">17392 ₽</p>
                    </div>
                </div>
            </div>
            <div class="content_new_products_carousel">
                <div class="content_new_products_carousel_img">
                    <img src="{{ asset('img/popular_item3.svg') }}" alt="">
                </div>
                <div class="content_new_products_carousel_fav">
                    <img src="{{ asset('img/Favourites_Normal.svg') }}" alt="">
                </div>
                <div class="content_new_products_carousel_block_descrp">
                    <div class="content_new_products_carousel_title">
                        LIB TECH
                    </div>
                    <div class="content_new_products_carousel_descrip">
                        Мужской Сноуборд
                    </div>
                    <div class="content_new_products_carousel_price">
                        34392 ₽
                    </div>
                </div>
            </div>
            <div class="content_new_products_carousel">
                <div class="content_new_products_carousel_img">
                    <img src="{{ asset('img/popular_item4.svg') }}" alt="">
                </div>
                <div class="content_new_products_carousel_fav">
                    <img src="{{ asset('img/Favourites_Normal.svg') }}" alt="">
                </div>
                <div class="content_new_products_carousel_block_descrp">
                    <div class="content_new_products_carousel_title">
                        LIB TECH
                    </div>
                    <div class="content_new_products_carousel_descrip">
                        Мужской Сноуборд
                    </div>
                    <div class="content_new_products_carousel_price">
                        34392 ₽
                    </div>
                </div>
            </div>

        </div>
        <div class="content_popular_collection_items_arrow_right">
            <img src="{{ asset('img/popular_item_right.svg') }}" alt="">
        </div>
        <div class="content_popular_collection_items_arrow_left">
            <img src="{{ asset('img/popular_item_left.svg') }}" alt="">
        </div>
    </div>
    <div class="content_more_items">
        <button class="content_more_items_button">Показать больше</button>
    </div>
    <div class="content_blogs">
        <div class="content_blogs_img">
            <img src="{{ asset('img/blog_img.svg') }}" alt="">
        </div>
        <div class="content_blogs_img_button">
            <img src="{{ asset('img/play_button.svg') }}" alt="">

        </div>
        <div class="content_blogs_info">
            <div class="content_blogs_info_link">
                <p class="content_blogs_info_link_text_left">Блоги</p>
                <p class="content_blogs_info_link_text_right">Все блоги</p>
            </div>
            <div class="content_blogs_info_title">
                Очень преочень длинное название блога
            </div>
            <div class="content_blogs_info_descr">
                Меня не спрашивали, а надо было спросить, что означает имя Заратустры именно в моих устах — в устах
                первого
                имморалиста: ведь то, в чём состоит неслыханная уникальность этого перса в истории, являет собою
                противоположность как раз этому.
            </div>
            <div class="content_blogs_info_descr">
                Меня не спрашивали, а надо было спросить, что означает имя Заратустры именно в моих устах — в устах
                первого
                имморалиста: ведь то, в чём состоит неслыханная уникальность этого перса в истории, являет собою
                противоположность как раз этому...
            </div>
            <div class="content_blogs_info_cont">
                Читать продолжение
            </div>

        </div>
    </div>
    <div class="content_loyalty_program">
        <div class="content_loyalty_program_block1">
            <div class="content_loyalty_program_block1_img">
                <img src="{{ asset('img/club_logo.svg') }}" alt="">
            </div>
            <div class="content_loyalty_program_block1_title">
                Программа лояльности
            </div>
            <div class="content_loyalty_program_block1_descr">
                Зарабатывайте баллы и получайте преимущества
            </div>
            <div class="content_loyalty_program_block1_join_club">
                Вступить в клуб
            </div>
        </div>
        <div class="content_loyalty_program_block2">
            <div class="content_loyalty_program_block2_img">
                <img src="{{ asset('img/mail_sale_logo.svg') }}" alt="">
            </div>
            <div class="content_loyalty_program_block2_title">
                Скидка -10%
            </div>
            <div class="content_loyalty_program_block2_descr">
                За подписку на наши новости
            </div>
            <div class="content_loyalty_program_block2_subscr">
                
                    <input type="text" placeholder="Email" class="block2_subscr_place">
                    <button type="submit" class="block2_subscr_btn"><img src="{{ asset('img/send_email.svg') }}"
                            alt=""></button>
                
                <div class="content_loyalty_program_block2_subscr_email">
                    <img src="{{ asset('img/email.svg') }}" alt="">
                </div>
            </div>

        </div>

    </div>
@endsection
