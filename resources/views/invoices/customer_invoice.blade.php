<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Commande - {{ $order->code }}</title>
	<meta http-equiv="Content-Type" content="text/html;"/>
	<meta charset="UTF-8">
	<style media="all">
		@font-face {
			font-family: 'Roboto';
			src: url("{{ asset('fonts/Roboto-Regular.ttf') }}") format("truetype");
			font-weight: normal;
			font-style: normal;
		}
		*{
			margin: 0;
			padding: 0;
			line-height: 1.3;
			font-family: 'Roboto';
			color: #333542;
		}
		body{
			font-size: .875rem;
		}
		.gry-color *,
		.gry-color{
			color:#878f9c;
		}
		table{
			width: 100%;
		}
		table th{
			font-weight: normal;
		}
		table.padding th{
			padding: .5rem .7rem;
		}
		table.padding td{
			padding: .7rem;
		}
		table.sm-padding td{
			padding: .2rem .7rem;
		}
		.border-bottom td,
		.border-bottom th{
			border-bottom:1px solid #eceff4;
		}
		.text-left{
			text-align:left;
		}
		.text-right{
			text-align:right;
		}
		.small{
			font-size: .85rem;
		}
		.currency{

		}
	</style>
</head>
<body>
<div>

	@php
		$generalsetting = \App\GeneralSetting::first();
	@endphp

	<div style="background: #eceff4;padding: 1.5rem;">
		<table>
			<tr>
				<td>
					<img loading="lazy"  src="https://bricolya.com/public/frontend/images/bricolya-logo-new.png" height="40" style="display:inline-block;">
					{{-- @if($generalsetting->logo != null)
						<img loading="lazy"  src="{{ asset($generalsetting->logo) }}" height="40" style="display:inline-block;">
					@else
						<img loading="lazy"  src="{{ asset('frontend/images/bricolya-logo-new.png') }}" height="40" style="display:inline-block;">
					@endif --}}
				</td>
				<td style="font-size: 2.5rem;" class="text-right strong">FACTURE</td>
			</tr>
		</table>
		<table>
			<tr>
				<td style="font-size: 1.2rem;" class="strong">{{ $generalsetting->site_name }}</td>
				<td class="text-right"></td>
			</tr>
			<tr>
				<td class="gry-color small">{{ $generalsetting->address }}</td>
				<td class="text-right"></td>
			</tr>
			<tr>
				<td class="gry-color small">Courriel: {{ $generalsetting->email }}</td>
				<td class="text-right small"><span class="gry-color small">Numéro de commande :</span> <span class="strong">{{ $order->code }}</span></td>
			</tr>
			<tr>
				<td class="gry-color small">Téléphone: {{ $generalsetting->phone }}</td>
				<td class="text-right small"><span class="gry-color small">Date de commande :</span> <span class=" strong">{{ date('d-m-Y', $order->date) }}</span></td>
			</tr>
		</table>

	</div>

	<div style="padding: 1.5rem;padding-bottom: 0">
		<table>
			@php
				$shipping_address = json_decode($order->shipping_address);
			@endphp
			<tr><td class="strong small gry-color">Facturer à :</td></tr>
			<tr><td class="strong">{{ $shipping_address->name }}</td></tr>
			<tr><td class="gry-color small">{{ $shipping_address->address }}, {{ $shipping_address->city }}, {{ $shipping_address->country }}</td></tr>
			<tr><td class="gry-color small">Courriel : {{ $shipping_address->email }}</td></tr>
			<tr><td class="gry-color small">Téléphone : {{ $shipping_address->phone }}</td></tr>
		</table>
	</div>

	<div style="padding: 1.5rem;">
		<table class="padding text-left small border-bottom">
			<thead>
			<tr class="gry-color" style="background: #eceff4;">
				<th width="35%">Produit</th>
				<th width="15%">Type de livraison</th>
				<th width="15%">Prix unitaire</th>
				<th width="15%">Remise</th>
				<th width="10%">Qte</th>
				<th width="10%">Taxe</th>
				<th width="15%" class="text-right">Total</th>
			</tr>
			</thead>
			<tbody class="strong">
			@php
				$tax = 0;
                $totalTTC = 0;

			@endphp
			@foreach ($order->orderDetails as $key => $orderDetail)


				@if ($orderDetail->product != null)
					<tr class="">
						<td>{{ $orderDetail->product->name }} ({{ $orderDetail->variation }})</td>
						<td>
							@if ($orderDetail->shipping_type != null && $orderDetail->shipping_type == 'home_delivery')
								{{ __('Home Delivery') }}
							@elseif ($orderDetail->shipping_type == 'pickup_point')
								@if ($orderDetail->pickup_point != null)
									{{ $orderDetail->pickup_point->name }} ({{ __('Pickip Point') }})
								@endif
							@endif
						</td>
						<td class="gry-color currency">{{ single_price($orderDetail->product->unit_price) }}</td>
						<td class="gry-color currency">{{ $orderDetail->product->discount }} {{ $orderDetail->product->discount_type == 'amount' ? 'DH' : '%' }}</td>
						<td class="gry-color">{{ $orderDetail->quantity }}</td>
						<td class="gry-color currency">{{ $orderDetail->product->tax }} {{ $orderDetail->product->tax_type == 'amount' ? 'DH' : '%' }}</td>
						<td class="text-right currency">{{ home_discounted_price($orderDetail->product->id,$orderDetail->quantity,null,null) }}</td>
					</tr>
					@php
						//$tax = $tax + $orderDetail->product->tax;
                        $totalTTC +=  home_discounted_price_num($orderDetail->product->id,$orderDetail->quantity,null,null);

					@endphp
				@endif
			@endforeach

			</tbody>
		</table>
	</div>

	<div style="padding:0 1.5rem;">
		<table style="width: 40%;margin-left:auto;" class="text-right sm-padding small strong">
			<tbody>
			<tr>
				<th class="gry-color text-left">Sous-total</th>
				<td class="currency">{{ single_price($order->orderDetails->sum('price')) }}</td>
			</tr>
			<tr>
				<th class="gry-color text-left">Frais d'expédition</th>
				{{--			            <td class="currency">{{ single_price($order->shipping_cost)  }}</td>--}}
				{{-- <td class="currency">@php echo $shipp = in_array(strtolower($shipping_address->city),['casablanca','casa']) ? 0 : 20  @endphp MAD</td> --}}
				<td class="currency">{{ $shipp = $order->shipping_cost }}</td>
			</tr>
			<tr class="border-bottom">
			<th class="gry-color text-left">Total hors taxe</th>
				<td class="currency">{{ single_price(($order->orderDetails->sum('price'))) }}</td>
			</tr>
			<tr>
				<th class="text-left strong">Total TTC</th>
				<td class="currency">{{ $totalTTC + $shipp }} MAD/TTC</td>
			</tr>

			</tbody>
		</table>
	</div>
</div>

</body>
</html>

