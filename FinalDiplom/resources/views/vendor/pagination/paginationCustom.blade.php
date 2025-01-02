@if ($paginator->hasPages())
    <nav class="paginationPage">
        @if ($paginator->onFirstPage())
            <div class="pagBox">
                <img src="{{ asset('img/paginationLeft.svg') }}" alt="" class="pagIcon">
            </div>
        @else
            <div class="pagBox">
                <a class="" href="{{ $paginator->previousPageUrl() }}">
                    <img src="{{ asset('img/paginationLeft.svg') }}" alt="" class="pagIcon">
                </a>
            </div>
        @endif

        {{-- Pagination Elements --}}
        @foreach ($elements as $element)
            @if (is_string($element))
                <div class="pagBox">
                    <span class="">{{ $element }}</span>
                </div>
            @endif

            @if (is_array($element))
                @foreach ($element as $page => $url)
                    @if ($page == $paginator->currentPage())
                        <div class="">
                            <span class="pageLink">{{ $page }}</span>
                        </div>
                    @else
                        <div class="">
                            <a class="pageLink" href="{{ $url }}">{{ $page }}</a>
                        </div>
                    @endif
                @endforeach
            @endif
        @endforeach

        {{-- Next Page Link --}}
        @if ($paginator->hasMorePages())

                <a class="pagBox" href="{{ $paginator->nextPageUrl() }}">
                    <img src="{{ asset('img/paginationRight.svg') }}" alt="" class="pagIcon">
                </a>

        @else
            <div class="pagBox">

                <img src="{{ asset('img/paginationRight.svg') }}" alt="" class="pagIcon">

            </div>
        @endif

    </nav>
@endif
