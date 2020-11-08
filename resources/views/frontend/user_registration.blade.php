@extends('frontend.layouts.app')

@section('content')
<section class="row contentRowPad">
    <div class="container">

        <!-- (.p2_relation_mv_down {  margin: 70px auto 0 auto;}) this call is for margin the header  -->
        <div class="row col-sm-8 my15">
            <div class="row m0">

                <h3 class="heading">Créer un compte :</h3>

            </div>
            <div class="row m0 excerpt">
                <p>
                    En créant un compte aupres de notre site, vous serez en mesure de passer vos commandes
                    plus rapidement, consulter et suivre vos commandes, et bien plus encore.
                </p>
            </div>
            <div class="row m0 contactForm">

                @if(session()->has('success'))
                <div class="alert alert-success">{{session()->get('success')}}</div>
                @endif
                <form class="form-default" role="form" action="{{ route('user.registration') }}" method="POST">
                    @csrf
                    <div class="row">
                        <div class="form-group col-xs-12 col-md-6">
                            <input type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" value="{{ old('name') }}" placeholder="Nom" name="name">
                            @if ($errors->has('name'))
                            <div class="text-danger">{{$errors->first('name')}}</div>
                            @endif
                        </div>
                        <div class="form-group col-xs-12 col-md-6">
                            <input type="text" id="phone-code" required class="border-right-0 h-100 w-100 form-control{{ $errors->has('phone') ? ' is-invalid' : '' }}" value="{{ old('phone') }}" placeholder="Téléphone" name="phone">
                            @if ($errors->has('phone'))
                            <div class="text-danger">{{$errors->first('phone')}}</div>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-xs-12 col-md-6">
                            <input type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" required value="{{ old('email') }}" placeholder="{{ __('E-mail') }}" name="email">
                            @if ($errors->has('email'))
                            <div class="text-danger">{{$errors->first('email')}}</div>
                            @endif
                        </div>
                        <div class="form-group col-xs-12 col-md-6">
                            <input type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" required placeholder="Mot de passe" name="password">
                            @if ($errors->has('password'))
                            <div class="text-danger">{{$errors->first('password')}}</div>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-xs-12 col-md-6">
                            {{-- <input type="text" class="form-control" placeholder="Ville" name="city"> <br> --}}
                            <select name="city" class="form-control">
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
                            </select> <br>
                            @if ($errors->has('city'))
                            <div class="text-danger">{{$errors->first('city')}}</div> <br>
                            @endif
                            <input type="text" class="form-control" required placeholder="Adresse" name="address">
                            @if ($errors->has('address'))
                            <div class="text-danger">{{$errors->first('address')}}</div> <br>
                            @endif
                        </div>
                        <div class="form-group col-xs-12 col-md-6">
                            <input type="password" class="form-control" required placeholder="Confirmer le mot de passe" name="password_confirmation">
                            @if ($errors->has('password_confirmation'))
                            <div class="text-danger">{{$errors->first('password_confirmation')}}</div>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-xs-12 col-md-6">
                            <button type="submit" class="btn btn-black_hover_yellow btn-block">Valider</button>
                        </div>
                    </div>
                </form>



                <div id="error">
                    <span>
                        Something went wrong, try refreshing and submitting the form again.
                    </span>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<!-- angle-background -->
<section id="angle-background" class="row shortcodesRow">
    <div class="angle-background-black"></div>
    <div class="angle-background"></div>

    <div class="container mb30">
        <div class="col-sm-6 ">
            <h4 class="heading">Où nous trouver?</h4>
            <p>Adresse: High dis 99-100 rue Metz Casablanca - Macroc</p>
            <p>Téléphone: +212 522 450 854</p>
            <p>Email: contact@bricolya.com</p>
        </div>
    </div>
</section>

<!-- Banner start -->
<section id="contactBanner" class="row contentRowPad">
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <h3>Bénéficiez de nos promotions exclusives!</h3>
            </div>
            <div class="col-sm-3">

                <a href="{{url('flash_products')}}" class="btn btn-yellow">J'en profite</a>
            </div>
        </div>
    </div>
</section>
<!-- Banner End -->
@endsection

@section('script')
<script type="text/javascript">
    function autoFillSeller(){
            $('#email').val('seller@example.com');
            $('#password').val('123456');
        }
        function autoFillCustomer(){
            $('#email').val('customer@example.com');
            $('#password').val('123456');
        }
</script>
@endsection