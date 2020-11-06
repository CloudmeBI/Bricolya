@extends('frontend.layouts.app')

@section('content')
<section id="breadcrumbRow" class="row">
        <div class="page-top-info">
        		<div class="container">
        			<h3 style="color: black;">Tous les produits</h3>
        		</div>
        	</div>
    </section>

    <section class="row contentRowPadPage">
        <div class="container">
            <div class="row">
        <!-- Side column category filter -->
             @include('frontend.partials.sidebar_category_filter')
        <!-- End side column -->

  <!-- Produt start up -->
        <div class="col-md-9  order-1 order-lg-2 mb-5 mb-lg-0">
					<div class="row">
            <div class="product">
              <div class="productHeader">
                <h3> Nos produits</h3>
              </div>
            </div>
                @foreach($products as $product)
            <div class="col-lg-3 col-sm-3 product">
                <div class="productInner row m0">
                    <div class="row m0 imgHov">
                        <img src="{{ asset($product->thumbnail_img) }}" alt="{{ __($product->name) }}">
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
                      <a href="{{ route('product', $product->slug) }}"><button class="addToCart btn">Ajouter au panier</button></a>
                    </div>
                </div>
            </div>
                @endforeach
            </div>
            {{ $products->links() }}

          </div>
      </div>
    </div>
  </section>
<!-- End Produt -->
@endsection