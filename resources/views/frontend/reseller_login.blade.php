@extends('frontend.layouts.app')

@section('content')

<section class="row">

    @if(session()->has('success'))
    <div class="alert alert-success">{{session()->get('success')}}</div>
    @endif
    <div class="container contentRowPad">
        <div class="row col-sm-6">
            <div class="row m0 titleRow mb30">
                <h3 class="contactHeading heading">Espace Revendeur</h3>
                <div class="row m0 excerpt">
                    <p>
                        En Créant un compte auprès de notre site, vous serez en mesure de passer vos commandes
                        plus rapidement, consulter et suivre vos commandes, et bien plus encore.
                    </p>
                </div>
            </div>

            <a href="{{route('reseller.register.get')}}" type="button" class="btn btn-dark btn-sm">Créer un compte</a>
        </div>
        <div class="row col-sm-6 my15">
            <div class="row m0">
                <h3 class="heading">Vous avez déjà un compte?</h3>
                <h3 class="heading">Connectez-vous!</h3>
            </div>
            <div class="row m0">

                <form class="row m0" id="contactForm" method="post" name="contact" action="/reseller/login">
                    @csrf
                    <div class="row m0">
                        <label for="email">Email:</label>
                        <input type="text" class="form-control" name="email" id="email">
                        @error('email')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="row m0">
                        <label for="password">Mot de passe:</label>
                        <input type="password" class="form-control" name="password" id="password">
                    </div>
                    <div class="row m0">
                        <label for="subject">
                            <a href="#"> Mot de passe oublié </a>
                        </label>
                    </div>

                    <button class="btn btn-dark btn-sm" type="submit">Se connecter</button>
                </form>

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
                <h3>Bénéficiez de nos promotions exclusives !</h3>
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