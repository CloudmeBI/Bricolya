@extends('frontend.layouts.app')

@section('content')

    <section class="gry-bg py-4 profile">
        <div class="container">
            <div class="row cols-xs-space cols-sm-space cols-md-space">
                <div class="col-lg-3 d-none d-lg-block">
                    @include('frontend.inc.customer_side_nav')
                </div>
                <div class="col-lg-9">
                    <!-- Page title -->
                    <div class="page-title">
                        <div class="row align-items-center">
                            <div class="col-md-6 col-12">
                                <h2 class="heading heading-6 text-capitalize strong-600 mb-0" name="dashboard">
                                    Tableau de bord
                                </h2>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="float-md-right">
                                    <ul class="breadcrumb">
                                        <li><a href="{{ route('home') }}" name="home">Accueil</a></li>
                                        <li class="active"><a href="{{ route('dashboard') }}">Tableau de bord</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- dashboard content -->
                    <div class="">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="dashboard-widget text-center green-widget mt-4 c-pointer">
                                    <a href="javascript:;" class="d-block">
                                        <i class="fa fa-shopping-cart"></i>
                                        @if(Session::has('cart'))
                                            <span class="d-block title">{{ count(Session::get('cart'))}} {{__('Product(s)')}}</span>
                                        @else
                                            <span class="d-block title">0 {{__('Product')}}</span>
                                        @endif
                                        <span class="d-block sub-title">{{__('in your cart')}}</span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="dashboard-widget text-center red-widget mt-4 c-pointer">
                                    <a href="javascript:;" class="d-block">
                                        <i class="fa fa-heart"></i>
                                        <span class="d-block title">{{ count(Auth::user()->wishlists)}} {{__('Product(s)')}}</span>
                                        <span class="d-block sub-title">{{__('in your wishlist')}}</span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="dashboard-widget text-center yellow-widget mt-4 c-pointer">
                                    <a href="javascript:;" class="d-block">
                                        <i class="fa fa-building"></i>
                                        @php
                                            $orders = \App\Order::where('user_id', Auth::user()->id)->get();
                                            $total = 0;
                                            foreach ($orders as $key => $order) {
                                                $total += count($order->orderDetails);
                                            }
                                        @endphp
                                        <span class="d-block title">{{ $total }} {{__('Product(s)')}}</span>
                                        <span class="d-block sub-title" name="your_ordered">votre commande</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-box bg-white mt-4">
                                    <div class="form-box-title px-3 py-2 clearfix ">
                                        <div class="float-right">
                                            <a href="{{ route('profile') }}" class="btn btn-link btn-sm" name="Edit">Éditer</a>
                                        </div>
                                    </div>
                                    <div class="form-box-content p-3">
                                        @if(Auth::user()->addresses != null)
                                            @php
                                                $address = Auth::user()->addresses->where('set_default', 1)->first();
                                            @endphp
                                            @if($address != null)
                                                <table>
                                                    <tr>
                                                        <td name="Address">Adresse:</td>
                                                        <td class="p-2">{{ $address->address }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td name="country">Pays:</td>
                                                        <td class="p-2">
                                                            {{ $address->country }}
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td name="City">Ville:</td>
                                                        <td class="p-2">{{ $address->city }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td name="Postal Code">code postal:</td>
                                                        <td class="p-2">{{ $address->postal_code }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td name="Phone">Téléphone:</td>
                                                        <td class="p-2">{{ $address->phone }}</td>
                                                    </tr>
                                                </table>
                                            @endif
                                        @endif
                                    </div>
                                </div>
                            </div>
                            @if (\App\BusinessSetting::where('type', 'classified_product')->first()->value)
                                <div class="col-md-6">
                                    <div class="form-box bg-white mt-4">
                                        <div class="form-box-title px-3 py-2 clearfix ">
										//Purchased Package
                                            Paquet acheté
                                        </div>
                                        @php
                                            $customer_package = \App\CustomerPackage::find(Auth::user()->customer_package_id);
                                        @endphp
                                        <div class="form-box-content p-3">
                                            @if($customer_package != null)
                                                <div class="form-box-content p-2 category-widget text-center">
                                                    <center><img alt="Package Logo" src="{{ asset($customer_package->logo) }}" style="height:100px; width:90px;"></center>
                                                    <br>
                                                    <left> 
														<strong>
															<p>
															//Product Upload
																Téléchargement de produit: {{ $customer_package->product_upload }} {{__('Times')}}
															</p>
														</strong>
													</left>
                                                    <strong>
														<p>
														//Product Upload Remaining
															Téléchargement de produit restant: {{ Auth::user()->remaining_uploads }} {{__('Times')}}
														</p>
													</strong>
													<strong>
														<p>
															<div class="name mb-0">
															//Current Package
																Paquet actuel: {{ $customer_package->name }} 
																<span class="ml-2"><i class="fa fa-check-circle" style="color:green"></i></span>
															</div>
														</p>
													</strong>
                                                </div>
                                            @else
                                                <div class="form-box-content p-2 category-widget text-center">
                                                    <center>
														<strong>
															<p>
															//Package Not Found
																Paquet introuvable
															</p>
														</strong>
													</center>
                                                </div>
                                            @endif
                                            <div class="text-center">
                                                <a href="{{ route('customer_packages_list_show') }}" class="btn btn-styled btn-base-1 btn-outline btn-sm">
													//Upgrade Package
													Package de mise à niveau
												</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

@endsection