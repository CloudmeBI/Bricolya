@extends('frontend.layouts.app')

@section('content')

    <div id="page-content">
        <section class="slice-xs sct-color-2 border-bottom">
            <div class="container container-sm">
                <div class="row cols-delimited justify-content-center">
                    <div class="col">
                        <div class="icon-block icon-block--style-1-v5 text-center ">
                            <div class="block-icon c-gray-light mb-0">
                                <i class="la la-shopping-cart"></i>
                            </div>
                            <div class="block-content d-none d-md-block">
                                <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize" name="My_Cart" >1. Mon panier</h3>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="icon-block icon-block--style-1-v5 text-center active">
                            <div class="block-icon mb-0">
                                <i class="la la-map-o"></i>
                            </div>
                            <div class="block-content d-none d-md-block">
                                <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize" name="Shipping_info" >2. Informations d'expédition</h3>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="icon-block icon-block--style-1-v5 text-center">
                            <div class="block-icon mb-0 c-gray-light">
                                <i class="la la-truck"></i>
                            </div>
                            <div class="block-content d-none d-md-block">
                                <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize" name="Delivery_info" >3. Informations de livraison</h3>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="icon-block icon-block--style-1-v5 text-center">
                            <div class="block-icon c-gray-light mb-0">
                                <i class="la la-credit-card"></i>
                            </div>
                            <div class="block-content d-none d-md-block">
                                <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize" name="Payment" >4. Paiement</h3>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="icon-block icon-block--style-1-v5 text-center">
                            <div class="block-icon c-gray-light mb-0">
                                <i class="la la-check-circle"></i>
                            </div>
                            <div class="block-content d-none d-md-block">
                                <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize" name="Confirmation" >5. Confirmation</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="py-4 gry-bg">
            <div class="container">
                <div class="row cols-xs-space cols-sm-space cols-md-space">
                    <div class="col-lg-8">
                        <form class="form-default" data-toggle="validator" action="{{ route('checkout.store_shipping_infostore') }}" role="form" method="POST">
                            @csrf
                                @if(Auth::check())
                                    <div class="row gutters-5">
                                        @foreach (Auth::user()->addresses as $key => $address)
                                            <div class="col-md-6">
                                                <label class="aiz-megabox d-block bg-white">
                                                    <input type="radio" name="address_id" value="{{ $address->id }}" @if ($address->set_default)
                                                        checked
                                                    @endif required>
                                                    <span class="d-flex p-3 aiz-megabox-elem">
                                                        <span class="aiz-rounded-check flex-shrink-0 mt-1"></span>
                                                        <span class="flex-grow-1 pl-3">
                                                            <div>
                                                                <span class="alpha-6">Adresse:</span>
                                                                <span class="strong-600 ml-2" name="address">{{ $address->address }}</span>
                                                            </div>
                                                            <div>
                                                                <span class="alpha-6">Code postal:</span>
                                                                <span class="strong-600 ml-2" name="postal_code">{{ $address->postal_code }}</span>
                                                            </div>
                                                            <div>
                                                                <span class="alpha-6">Ville:</span>
                                                                <span class="strong-600 ml-2" name="city">{{ $address->city }}</span>
                                                            </div>
                                                            <div>
                                                                <span class="alpha-6">Pays:</span>
                                                                <span class="strong-600 ml-2" name="country">{{ $address->country }}</span>
                                                            </div>
                                                            <div>
                                                                <span class="alpha-6">Téléphone:</span>
                                                                <span class="strong-600 ml-2" name="phone">{{ $address->phone }}</span>
                                                            </div>
                                                        </span>
                                                    </span>
                                                </label>
                                            </div>
                                        @endforeach
                                        <input type="hidden" name="checkout_type" value="logged">
                                        <div class="col-md-6 mx-auto" onclick="add_new_address()">
                                            <div class="border p-3 rounded mb-3 c-pointer text-center bg-white">
                                                <i class="la la-plus la-2x"></i>
                                                <div class="alpha-7" name="add_new_address">Ajouter une nouvelle adresse</div>
                                            </div>
                                        </div>
                                    </div>
                                @else
                                    <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Nom</label>
                                                    <input type="text" class="form-control" name="name" placeholder="Nom" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">E-mail</label>
                                                    <input type="text" class="form-control" name="email" placeholder="E-mail" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Adresse</label>
                                                    <input type="text" class="form-control" name="address" placeholder="Adresse" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label" name="Choose_your_country">Sélectionnez votre pays</label>
                                                    <select class="form-control custome-control" data-live-search="true" name="country">
                                                        @foreach (\App\Country::where('status', 1)->get() as $key => $country)
                                                            <option value="{{ $country->name }}"  <?php if($country->name=="Morocco") echo 'selected'; ?> >{{ $country->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group has-feedback">
                                                    <label class="control-label">Ville</label>
                                                    <input type="text" class="form-control" placeholder="Ville" name="city" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group has-feedback">
                                                    <label class="control-label">Code postal</label>
                                                    <input type="number" min="0" class="form-control" placeholder="Code postal" name="postal_code" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group has-feedback">
                                                    <label class="control-label">Téléphone</label>
                                                    <input type="number" min="0" class="form-control" placeholder="Téléphone" name="phone" required>
                                                </div>
                                            </div>
                                        </div>
                                        <input type="hidden" name="checkout_type" value="guest">
                                    </div>
                                    </div>
                                @endif
                            <div class="row align-items-center pt-4">
                                <div class="col-md-6">
                                    <a href="{{ route('home') }}" class="link link--style-3">
                                        <i class="ion-android-arrow-back" name="Return_to_the_boutique"></i>
                                        Retour à la boutique
                                    </a>
                                </div>
                                <div class="col-md-6 text-right">
                                    <button type="submit" class="btn btn-styled btn-base-1" name="Continue_to_Delivery_Info">Suivant</a>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="col-lg-4 ml-lg-auto">
                        @include('frontend.partials.cart_summary')
                    </div>
                </div>
            </div>
        </section>
    </div>

    <div class="modal fade" id="new-address-modal" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-zoom" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="exampleModalLabel">Nouvelle adresse</h6>
                <button type="button" class="close" data-dismiss="modal" name="New Address" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="form-default" role="form" action="{{ route('addresses.store') }}" method="POST">
                @csrf
                <div class="modal-body">
                    <div class="p-3">
                        <div class="row">
                            <div class="col-md-2">
                                <label>Adresse</label>
                            </div>
                            <div class="col-md-10">
                                <textarea class="form-control textarea-autogrow mb-3" placeholder="Ta Adresse" rows="1" name="address" required></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <label>Pays</label>
                            </div>
                            <div class="col-md-10">
                                <div class="mb-3">
                                    <select class="form-control mb-3 selectpicker" data-placeholder="Sélectionnez votre pays" name="country" required>
                                        @foreach (\App\Country::where('status', 1)->get() as $key => $country)
                                            <option value="{{ $country->name }}" <?php if($country->name=="Morocco") echo 'selected'; ?>>{{ $country->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <label>Ville</label>
                            </div>
                            <div class="col-md-10">
                                {{-- <input type="text" class="form-control mb-3" placeholder="Ta ville" name="city" value="" required> --}}
                                <select name="city" class="form-control mb-3">
                                    <option value="">Ville</option>
                                    <option value="agadir">Agadir</option>
                                    <option value="ain_harrouda">Ain Harrouda</option>
                                    <option value="aït_melloul">Aït Melloul</option>
                                    <option value="al_hoceima">Al Hoceima</option>
                                    <option value="azrou">Azrou</option>
                                    <option value="ben_guerir">Ben Guerir</option>
                                    <option value="beni_ansar">Beni Ansar</option>
                                    <option value="beni_mellal">Beni Mellal</option>
                                    <option value="benslimane">Benslimane</option>
                                    <option value="berkane">Berkane</option>
                                    <option value="berrechid">Berrechid</option>
                                    <option value="bouskoura">Bouskoura</option>
                                    <option value="casablanca">Casablanca</option>
                                    <option value="dar_bouazza">Dar Bouazza</option>
                                    <option value="dcheira_el_jihadia">Dcheira El Jihadia</option>
                                    <option value="drargua">Drargua</option>
                                    <option value="el_jadida">El Jadida</option>
                                    <option value="el_kelaa_des_sraghna">El Kelaa Des Sraghna</option>
                                    <option value="errachidia">Errachidia</option>
                                    <option value="essaouira">Essaouira</option>
                                    <option value="fez">Fez</option>
                                    <option value="fnideq">Fnideq</option>
                                    <option value="fquih_ben_salah">Fquih Ben Salah</option>
                                    <option value="guelmim">Guelmim</option>
                                    <option value="guercif">Guercif</option>
                                    <option value="inezgane">Inezgane</option>
                                    <option value="kenitra">Kenitra</option>
                                    <option value="khemisset">Khemisset</option>
                                    <option value="khenifra">Khenifra</option>
                                    <option value="khouribga">Khouribga</option>
                                    <option value="ksar_el_kebir">Ksar El Kebir</option>
                                    <option value="lahraouyine">Lahraouyine</option>
                                    <option value="larache">Larache</option>
                                    <option value="lqliaa">Lqliaa</option>
                                    <option value="m'diq">M'diq</option>
                                    <option value="marrakesh">Marrakesh</option>
                                    <option value="martil">Martil</option>
                                    <option value="meknes">Meknes</option>
                                    <option value="midelt">Midelt</option>
                                    <option value="mohammedia">Mohammedia</option>
                                    <option value="nador">Nador</option>
                                    <option value="ouarzazate">Ouarzazate</option>
                                    <option value="ouazzane">Ouazzane</option>
                                    <option value="oued_zem">Oued Zem</option>
                                    <option value="oujda">Oujda</option>
                                    <option value="oulad_teima">Oulad Teima</option>
                                    <option value="rabat">Rabat</option>
                                    <option value="safi">Safi</option>
                                    <option value="salé">Salé</option>
                                    <option value="sefrou">Sefrou</option>
                                    <option value="settat">Settat</option>
                                    <option value="sidi_bennour">Sidi Bennour</option>
                                    <option value="sidi_kacem">Sidi Kacem</option>
                                    <option value="sidi_slimane">Sidi Slimane</option>
                                    <option value="skhirat">Skhirat</option>
                                    <option value="souk_el_arbaa">Souk El Arbaa</option>
                                    <option value="suq_as-sabt_awlad_an-nama">Suq as-Sabt Awlad an-Nama</option>
                                    <option value="tan-tan">Tan-Tan</option>
                                    <option value="tangier">Tangier</option>
                                    <option value="taourirt">Taourirt</option>
                                    <option value="taroudant">Taroudant</option>
                                    <option value="taza">Taza</option>
                                    <option value="temara">Temara</option>
                                    <option value="tetouan">Tetouan</option>
                                    <option value="tifelt">Tifelt</option>
                                    <option value="tiznit">Tiznit</option>
                                    <option value="youssoufia">Youssoufia</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <label>Code postal</label>
                            </div>
                            <div class="col-md-10">
                                <input type="text" class="form-control mb-3" placeholder="Votre code postal" name="postal_code" value="" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <label>Téléphone</label>
                            </div>
                            <div class="col-md-10">
                                <input type="text" class="form-control mb-3" placeholder="{{__('+880')}}" name="phone" value="" required>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-base-1" name="Save">sauver</button>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection

@section('script')
<script type="text/javascript">
    function add_new_address(){
        $('#new-address-modal').modal('show');
    }
</script>
@endsection