@php
    $itemsPerRow = $shortcode->products_per_row ?: get_products_per_row();
    $itemsPerRowOnMobile = theme_option('ecommerce_products_per_row_mobile', 2);
@endphp

<div {!! $shortcode->htmlAttributes() !!} class="section pt-0 small_pb">
    <div class="container">
        @if ($title)
            <div class="heading_tab_header">
                <div class="heading_s2">
                    <h2 class="h4">{!! BaseHelper::clean($title) !!}</h2>
                </div>
            </div>
        @endif
        @if ($products->isNotEmpty())
            <div class="row row-cols-xxl-{{ $itemsPerRow }} row-cols-xl-{{ max(3, $itemsPerRow - 1) }} row-cols-lg-{{ max(2, $itemsPerRow - 2) }} row-cols-md-3 row-cols-sm-{{ $itemsPerRowOnMobile }} row-cols-{{ $itemsPerRowOnMobile }}">
                @foreach($products as $product)
                    <div class="col">
                        {!! Theme::partial('product-item', compact('product')) !!}
                    </div>
                @endforeach
            </div>
            @if ($products instanceof Illuminate\Pagination\LengthAwarePaginator)
                <div class="shop__pagination">
                    {!! $products->withQueryString()->links() !!}
                </div>
            @endif
        @endif
    </div>
</div>
