@foreach ($items as $item)
    <a href="{{ route('shoe', ['id' => $item->id]) }}">
        <div class="item_box">
            <div class="item_box_img">
                <img src="{{ asset('storage/' . $item->img) }}" alt="{{ $item->title }}" class="box_img">
                @if ($item->price_discount != null)
                    <div class="item_box_discaount">
                        -{{ $item->price_discount }}%
                    </div>
                @endif
            </div>
            <div class="item_box_info">
                <div class="item_box_info_title">{{ $item->title }}</div>
                
                <div class="item_box_title">
                    @if ($item->price_discount != null)
                        <p class="item_box_info_old_price">
                            {{ number_format($item->price, 0, '.', ' ') . ' ₽' }}
                        </p>
                        <p class="item_box_info_price">
                            <b>{{ number_format($item->price - ($item->price * $item->price_discount) / 100, 0, '.', ' ') . ' ₽' }}</b>
                        </p>
                    @else
                        <p class="item_box_info_price_noSale">
                            <b>{{ number_format($item->price, 0, '.', ' ') . ' ₽' }}</b>
                        </p>
                    @endif
                </div>
            </div>
        </div>
    </a>
@endforeach
