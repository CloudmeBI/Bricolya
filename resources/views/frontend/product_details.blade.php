@extends('frontend.layouts.app')
@section('content')
<!-- SHOP GRID WRAPPER -->
<section class="row contentRowPad">
    <div class="container">
        <div class="row singleProduct">
            <div class="col-sm-7">
                @if($detailedProduct->photos)
                <div class="row m0 flexslider" id="productImageSlider">
                    <ul class="slides">
                        @foreach (json_decode($detailedProduct->photos) as $key => $photo)
                        <li><img src="https://www.bricolya.com/public/{{$photo}}" alt=""></li>
                        @endforeach
                    </ul>
                </div>
                @endif
                @if($detailedProduct->photos)
                <div class="row m0 flexslider" id="productImageSliderNav">
                    <ul class="slides">
                        @foreach (json_decode($detailedProduct->photos) as $key => $photo)
                        <li><img class="img-thumbnail" src="https://www.bricolya.com/public/{{$photo}}" alt=""></li>
                        @endforeach
                    </ul>
                </div>
                @else
                <div class="row m0" id="productImageSliderNav">

                    <img class="img-thumbnail" src="https://boschbrandstore.com/wp-content/uploads/2019/01/no-image.png">

                </div>

                @endif
            </div>
            <div class="col-sm-5">
                <div class="row m0">
                    <h4 class="heading">{{ __($detailedProduct->name) }}</h4>
                    <h3 class="heading price"> {{ home_discounted_price($detailedProduct->id)   }}</h3>

                    <div class="row descList m0">
                        @php
                        $qty = 0;
                        if($detailedProduct->variant_product){
                        foreach ($detailedProduct->stocks as $key => $stock) {
                        $qty += $stock->qty;
                        }
                        }
                        else{
                        $qty = $detailedProduct->current_stock;
                        }
                        @endphp
                        <dl class="dl-horizontal">

                            <dt>Disponibilité :</dt>
                            <dd>{{$qty}} articles en stock</dd>

                        </dl>

                        <dl class="dl-horizontal">

                            <dt>Référence :</dt>
                            <dd>{{ $detailedProduct->ref ? $detailedProduct->ref : '' }}</dd>

                        </dl>

                        <dl class="dl-horizontal">

                            <dt>Prix unit :</dt>
                            <dd>{{ $detailedProduct->unit_price }} MAD / HT</dd>

                        </dl>

                        <dl class="dl-horizontal">

                            <dt>Remise :</dt>
                            <dd>{{ $detailedProduct->discount }} {{ $detailedProduct->discount_type == 'amount' ? 'DH' : '%' }}</dd>

                        </dl>

                        <dl class="dl-horizontal">

                            <dt>TVA :</dt>
                            <dd>{{ $detailedProduct->tax }} {{ $detailedProduct->tax_type == 'amount' ? 'DH' : '%' }}</dd>

                        </dl>

                        <dl class="dl-horizontal">

                            <dt>Total :</dt>
                            <dd>{{home_discounted_price($detailedProduct->id)}} / TTC</dd>

                        </dl>



                    </div>
                    <div class="row m0 shortDesc">
                        <p class="m0"><?php echo $detailedProduct->description; ?></p>
                    </div>

                    <br>

                    <form id="option-choice-form">
                        @csrf
                        <div class="row m0 qtyAtc">
                            <div class="fleft quantity d-flex">
                                <div class="fleft">Qté <span>=</span></div>
                                <div class="input-group spinner" style="margin-right: 1.5rem">
                                    <input type="number" min="1" max="{{$qty}}" name="quantity" class="form-control" value="1">
                                    <div class="input-group-btn-vertical">
                                        <div class="btn btn-default"><i class="fa fa-angle-up"></i></div>
                                        <div class="btn btn-default"><i class="fa fa-angle-down"></i></div>
                                    </div>
                                </div>
                                <button class="fleft btn btn-default" onclick="event.preventDefault();addToCart()"><img src="{{url("/")}}public/frontend/images/icons/cart3.png" alt=""> achat</button>
                                <input type="hidden" name="id" value="{{ $detailedProduct->id }}">
                                @if ($flashDeal)
                                <input type="hidden" name="flash_deal_id" value="{{ $flashDeal->id }}">
                                @endif
                            </div>
                        </div>
                    </form>

                    @if ($flashDeal)
                    <div class="row m0">
                        <div class="alert alert-success" role="alert">
                            Si vous achetez {{ $flashDeal->conditions["quantity"] }} en quantité de ce produit, ces articles sont offerts gratuitement :
                            @foreach ($flashDeal->flash_deal_products as $flash_deal_product)
                            <br>- {{ $flash_deal_product->product->name }}
                            @endforeach
                        </div>
                    </div>
                    @endif
                </div>
            </div>
        </div>
        <div class="row m0 tabRow">
            <ul class="nav nav-tabs" role="tablist" id="shortcodeTab">
                <li role="presentation" class="active"><a href="#description" aria-controls="description" role="tab" data-toggle="tab">
                        <i class="fa fa-align-left"></i> description
                    </a></li>
            </ul>
            <div class="tab-content shortcodeTabContent">
                <div role="tabpanel" class="tab-pane row m0 active" id="description">

                    <div class="fleft desc">
                        <h5 class="heading">Product Details</h5>
                        <?php echo $detailedProduct->description; ?>
                    </div>
                </div>
            </div>
        </div>
        <!--Tabs Row-->

    </div>
</section>

@endsection

@section('script')
<script type="text/javascript">
    $(document).ready(function() {
    		$('#share').jsSocials({
    			showLabel: false,
                showCount: false,
                shares: ["email", "twitter", "facebook", "linkedin", "pinterest", "stumbleupon", "whatsapp"]
    		});
            getVariantPrice();
    	});

        function CopyToClipboard(containerid) {
            if (document.selection) {
                var range = document.body.createTextRange();
                range.moveToElementText(document.getElementById(containerid));
                range.select().createTextRange();
                document.execCommand("Copy");

            } else if (window.getSelection) {
                var range = document.createRange();
                document.getElementById(containerid).style.display = "block";
                range.selectNode(document.getElementById(containerid));
                window.getSelection().addRange(range);
                document.execCommand("Copy");
                document.getElementById(containerid).style.display = "none";

            }
            showFrontendAlert('success', 'Copied');
        }

        function show_chat_modal(){
            @if (Auth::check())
                $('#chat_modal').modal('show');
            @else
                $('#login_modal').modal('show');
            @endif
        }

</script>
@endsection