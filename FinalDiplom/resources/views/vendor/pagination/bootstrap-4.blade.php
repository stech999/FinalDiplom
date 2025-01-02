@if ($paginator->hasPages())
    <nav>
        <ul class="paginationPage">
            {{-- Previous Page Link --}}
            @if ($paginator->onFirstPage())
                <div class="pagLeft" aria-disabled="true" aria-label="@lang('pagination.previous')">
                    <span class="pagLeft" aria-hidden="true">
                        <img src="{{ asset('img/paginationLeft.svg') }}" alt="" class="pagIconLeft">
                    </span>
                </div>
            @else
                <div class="pagLeft">
                    <a class="" href="{{ $paginator->previousPageUrl() }}" rel="prev"
                        aria-label="@lang('pagination.previous')">
                        <img src="{{ asset('img/paginationLeft.svg') }}" alt="" class="pagIconLeft">
                    </a>
                </div>
            @endif

            {{-- Pagination Elements --}}
            @foreach ($elements as $element)
                @if (is_string($element))
                    <div class="pageBox disabled" aria-disabled="true"><span class="pageLink">{{ $element }}</span>
                    </div>
                @endif

                @if (is_array($element))
                    @foreach ($element as $page => $url)
                        @if ($page == $paginator->currentPage())
                            <div class="pageBox active" aria-current="page"><span
                                    class="pageLink">{{ $page }}</span></div>
                        @else
                            <div class="pageBox"><a class="pageLink" href="{{ $url }}">{{ $page }}</a>
                            </div>
                        @endif
                    @endforeach
                @endif
            @endforeach

            {{-- Next Page Link --}}
            @if ($paginator->hasMorePages())
                <div class="">
                    <a class="" href="{{ $paginator->nextPageUrl() }}" rel="next" aria-label="@lang('pagination.next')">
                        <img src="{{ asset('img/paginationRight.svg') }}" alt="" class="pagIconLeft">
                    </a>
                </div>
            @else
                <div class=" disabled" aria-disabled="true" aria-label="@lang('pagination.next')">
                    <span class="" aria-hidden="true">
                        <img src="{{ asset('img/paginationRight.svg') }}" alt="" class="pagIconLeft">
                    </span>
                </div>
            @endif
        </ul>
    </nav>
@endif

