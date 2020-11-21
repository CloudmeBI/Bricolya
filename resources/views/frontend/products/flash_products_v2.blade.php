@extends('frontend.layouts.app')
@push('seometa')
<title>BRICOLYA - Matériel de bricolage et outillage en ligne</title>
<meta name="description" content="Chez Bricolya, Promotions à couper le soufle en  matériels de bricolage, matériels d'outillage, de quincaillerie, sanitaire et plomberie, cadenas et serrure, etc…" />
<meta name="keywords" content="">
@endpush
@section('content')
<section id="breadcrumbRow" class="row">
    <div class="page-top-info">
        <div class="container">
            <h3 style="color: black;">Promotions & Destockage</h3>
        </div>
    </div>
</section>

<section class="row contentRowPadPage">
    <div class="container">
        <div class="row">
            <!-- Produt start up -->
            <div class="col-md-11 order-1 order-lg-2 mb-5 mb-lg-0 m-auto">
                <div class="row">
                    <div class="product">
                        <div class="productHeader">
                            <h3> Nos produits</h3>
                        </div>
                    </div>
                    @foreach($flashdeals as $flashdeal)
                    <div class="col-lg-3 col-sm-3 product">
                        <div class="productInner row m0">
                            <div class="row m0 imgHov">
                                @if($flashdeal->product->thumbnail_img)
                                <img src="{{ asset($flashdeal->product->thumbnail_img) }}" alt="{{ __($flashdeal->product->name) }}">
                                @else
                                <img src="https://boschbrandstore.com/wp-content/uploads/2019/01/no-image.png" alt="{{ __($flashdeal->product->name) }}">
                                @endif
                                <div class="row m0 proPrice">{{ home_discounted_base_price($flashdeal->product->id) }}</div>
                                <div class="row m0 hovArea">
                                    <div class="row m0 icons">
                                        <ul class="list-inline">
                                            <li><a href="#"><i class="glyphicon glyphicon-zoom-in"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="row m0 proType"><a href="{{ route('product', $flashdeal->product->slug) }}">{{ __($flashdeal->title) }}</a></div>
                                    <div class="row m0 proPrice">{{ home_discounted_base_price($flashdeal->product->id) }}</div>
                                </div>
                            </div>
                            <div class="row m0 proName"><a href="{{ route('product', $flashdeal->product->slug) }}">{{ __($flashdeal->title) }}</a></div>
                            <div class="row m0 proBuyBtn">
                                <a href="{{ route('product', ["slug" => $flashdeal->product->slug, "flash_deal_id" => $flashdeal->id]) }}"><button class="addToCart btn">Ajouter au panier</button></a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div style="display:table;margin:auto;">
                    {{ $flashdeals->links() }}
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Produt -->
@endsection
