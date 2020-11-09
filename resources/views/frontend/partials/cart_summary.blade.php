<div class="card sticky-top">
    <div class="card-title py-3">
        <div class="row align-items-center">
            <div class="col-6">
                <h3 class="heading heading-3 strong-400 mb-0">
                    <span>Résumé</span>
                </h3>
            </div>

            <div class="col-6 text-right">
                <span class="badge badge-md badge-success">{{ count(Session::get('cart')) }} Articles</span>
            </div>
        </div>
    </div>

    <div class="card-body">
        @if (\App\Addon::where('unique_identifier', 'club_point')->first() != null && \App\Addon::where('unique_identifier', 'club_point')->first()->activated)
            @php
                $total_point = 0;
            @endphp
            @foreach (Session::get('cart') as $key => $cartItem)
                @php
                    $product = \App\Product::find($cartItem['id']);
                    $total_point += $product->earn_point*$cartItem['quantity'];
                @endphp
            @endforeach
            <div class="club-point mb-3 bg-soft-base-1 border-light-base-1 border">
                {{ __("Total Club point") }}:
                <span class="strong-700 float-right">{{ $total_point }}</span>
            </div>
        @endif
        <table class="table-cart table-cart-review">
            <thead>
                <tr>
                    <th class="product-name">Produit</th>
                    <th class="product-total text-right">Totale</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $subtotal = 0;
                    $totalTTC = 0;
                    $tax = 0;
                    $shipping = 0;
                    // if (\App\BusinessSetting::where('type', 'shipping_type')->first()->value == 'flat_rate') {
                    //     $shipping = \App\BusinessSetting::where('type', 'flat_rate_shipping_cost')->first()->value;
                    // }
                    $order = \App\Order::findOrFail(Session::get('order_id'));
                    $shipping = $order->shipping_cost;

                    $admin_products = array();
                    $seller_products = array();
                @endphp
                @php
                    if (\App\BusinessSetting::where('type', 'shipping_type')->first()->value == 'seller_wise_shipping') {
                        if(!empty($admin_products)){
                            $shipping = \App\BusinessSetting::where('type', 'shipping_cost_admin')->first()->value;
                        }
                        if(!empty($seller_products)){
                            foreach ($seller_products as $key => $seller_product) {
                                $shipping += \App\Shop::where('user_id', $key)->first()->shipping_cost;
                            }
                        }
                    }
                @endphp
                @foreach (Session::get('cart') as $key => $cartItem)
                    @php
                        $product = \App\Product::find($cartItem['id']);
                        if($product->added_by == 'admin'){
                            array_push($admin_products, $cartItem['id']);
                        }
                        else{
                            $product_ids = array();
                            if(array_key_exists($product->user_id, $seller_products)){
                                $product_ids = $seller_products[$product->user_id];
                            }
                            array_push($product_ids, $cartItem['id']);
                            $seller_products[$product->user_id] = $product_ids;
                        }
                        $subtotal += $cartItem['price']*$cartItem['quantity'];
                        //$totalTTC += ($cartItem['price'] + (($cartItem['price']*$cartItem['tax'])/100)) *$cartItem['quantity'];
                        $totalTTC +=  home_discounted_price_num($cartItem['id'],$cartItem['quantity'],null,$shipping);
                        $tax += $cartItem['tax']*$cartItem['quantity'];
                        if (\App\BusinessSetting::where('type', 'shipping_type')->first()->value == 'product_wise_shipping') {
                            $shipping += $cartItem['shipping'];
                        }
                        $product_name_with_choice = $product->name;
                        if ($cartItem['variant'] != null) {
                            $product_name_with_choice = $product->name.' - '.$cartItem['variant'];
                        }
                    @endphp
                    <tr class="cart_item">
                        <td class="product-name">
                            {{ $product_name_with_choice }}
                            <strong class="product-quantity">× {{ $cartItem['quantity'] }}</strong>
                        </td>
                        <td class="product-total text-right">
                            <span class="pl-4">{{ $product['unit_price']}} MAD/HT</span>
                        </td>
                    </tr>
                    <tr class="{{$product->discount > 0 ? '' : 'd-none'}}" >
                        <th style="font-weight: 400;font-size: 14px;">Remise</th>
                        <td class="text-right"  style="font-weight: 400;font-size: 14px;">
                            <span class="text-italic" >- {{ $product->discount }} {{ $product->discount_type == 'amount' ? 'DH' : '%' }}</span>
                        </td>
                    </tr>
                    <tr class="cart-shipping {{$product->tax > 0 ? '' : 'd-none'}}">
                        <th style="font-weight: 400;font-size: 14px;">Impôt</th>
                        <td class="text-right" style="font-weight: 400;font-size: 14px;">
                            <span class="text-italic">{{ $product->tax }} {{ $product->tax_type == 'amount' ? 'DH' : '%' }}</span>
                        </td>
                    </tr>
                    <tr class="cart-shipping">
                        <th style="font-weight: 400;font-size: 14px;">Frais d'Expédition</th>
                        <td class="text-right" style="font-weight: 400;font-size: 14px;">
                            <span class="text-italic">{{ $shipping }}</span>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        <table class="table-cart table-cart-review">

            <tfoot>
                {{--<tr class="cart-subtotal">--}}
                    {{--<th>subtotal</th>--}}
                    {{--<td class="text-right">--}}
                        {{--<span class="strong-600">{{ single_price($subtotal) }}</span>--}}
                    {{--</td>--}}
                {{--</tr>--}}




                {{--<tr class="cart-shipping">--}}
                    {{--<th>Expédition Hors Casa</th>--}}
                    {{--<td class="text-right">--}}
                        {{--<span class="text-italic">+ {{ single_price($product->shipping_cost) }}</span>--}}
                    {{--</td>--}}
                {{--</tr>--}}

                {{--@if (Session::has('coupon_discount'))--}}
                    {{--<tr class="cart-shipping">--}}
                        {{--<th>Remise de coupon</th>--}}
                        {{--<td class="text-right">--}}
                            {{--<span class="text-italic">{{ single_price(Session::get('coupon_discount')) }}</span>--}}
                        {{--</td>--}}
                    {{--</tr>--}}
                {{--@endif--}}


                @php
                    $total = isset($product) ?  home_discounted_price($product->id,$cartItem['quantity'],null,$product->shipping_cost) : '';
                       //$total = $subtotal+$tax+$shipping;
                       /*if(Session::has('coupon_discount')){
                           $total -= Session::get('coupon_discount');
                       }*/
                @endphp

                <tr class="cart-total">
                    <th><span class="strong-600">Totale</span></th>
                    <td class="text-right">

                        <strong><span>{{  $totalTTC  }} </span> TTC *</strong>
                    </td>
                </tr>
            </tfoot>
        </table>

        @if (Auth::check() && \App\BusinessSetting::where('type', 'coupon_system')->first()->value == 1)
            @if (Session::has('coupon_discount'))
                <div class="mt-3">
                    <form class="form-inline" action="{{ route('checkout.remove_coupon_code') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group flex-grow-1">
                            <div class="form-control bg-gray w-100">{{ \App\Coupon::find(Session::get('coupon_id'))->code }}</div>
                        </div>
                        <button type="submit" class="btn btn-base-1">Changer le coupon</button>
                    </form>
                </div>
            @else
                <div class="mt-3">
                    <form class="form-inline" action="{{ route('checkout.apply_coupon_code') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group flex-grow-1">
                            <input type="text" class="form-control w-100" name="code" placeholder="{{__('Have coupon code? Enter here')}}" required>
                        </div>
                        <button type="submit" class="btn btn-base-1">Appliquer</button>
                    </form>
                </div>
            @endif
        @endif

    </div>
</div>