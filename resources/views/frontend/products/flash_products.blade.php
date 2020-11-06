@extends('frontend.layouts.app')
@push('seometa')
<title>BRICOLYA -  Matériel de bricolage et outillage en ligne</title>
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
            <!-- Side column -->
            <!-- Side column category filter -->
            @include('frontend.partials.sidebar_category_filter')
        <!-- End side column -->
<!-- End side column -->

  <!-- Produt start up -->
        <div class="col-md-9  order-1 order-lg-2 mb-5 mb-lg-0">
					<div class="row">
            <div class="product">

				<div class="row m0 sectionTitle">
					<h3>Nos promotions</h3>
				</div>
            </div>
                @foreach($products as $product)
                    <div class="col-lg-4 col-sm-4 product">
                        <div class="productInner row m0">
                            <div class="row m0 imgHov">
                            <img src="{{ asset($product->featured_img) }}" alt="{{ __($product->name) }}">
                                <div class="row m0 hovArea">
                                    <div class="row m0 icons">
                                        <ul class="list-inline">
                                            <li><a href="#"><i class="glyphicon glyphicon-zoom-in"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="row m0 proType"><a href="{{ route('product', $product->slug) }}">{{ __($product->name) }}</a></div>
                                    <div class="row m0 proPrice">{{ home_discounted_base_price($product->id) }}</div>
                                </div>
                            </div>
                            <div class="row m0 proName"><a href="{{ route('product', $product->slug) }}">{{ __($product->name) }}</a></div>
                            <div class="row m0 proBuyBtn">
                                <button onclick="addToCart()" class="addToCart btn">Ajouter au panier</button>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>
            {{ $products->links() }}



        <!-- Destockage  -->

					<div class="row">
            <div class="product">
				<div class="row m0 sectionTitle">
					<h3>Déstockage</h3>
				</div>
            </div>
                @foreach($today_deal_products as $product)
                    <div class="col-lg-4 col-sm-4 product">
                        <div class="productInner row m0">
                            <div class="row m0 imgHov">
                            <img src="{{ asset($product->featured_img) }}" alt="{{ __($product->name) }}">
                                <div class="row m0 hovArea">
                                    <div class="row m0 icons">
                                        <ul class="list-inline">
                                            <li><a href="#"><i class="glyphicon glyphicon-zoom-in"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="row m0 proType"><a href="{{ route('product', $product->slug) }}">{{ __($product->name) }}</a></div>
                                    <div class="row m0 proPrice">{{ home_discounted_base_price($product->id) }}</div>
                                </div>
                            </div>
                            <div class="row m0 proName"><a href="{{ route('product', $product->slug) }}">{{ __($product->name) }}</a></div>
                            <div class="row m0 proBuyBtn">
                                <a href="{{ route('product', $product->slug) }}"> <button class="addToCart btn">Ajouter au panier</button></a>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>
            {{ $today_deal_products->links() }}

        </div>
        <!-- Destockage  -->

      </div>
    </div>
  </section>
<!-- End Produt -->
@endsection
