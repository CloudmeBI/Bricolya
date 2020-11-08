@extends('frontend.layouts.app')

@section('content')
<section class="row contentRowPad">
  <div class="container">
    <div class="row col-sm-6">
      <div class="row m0 titleRow mb30">
        <div class="fleft titlePart">
          <a href="#">
            <h3 class=" contactHeading heading">Espace client</h3>
          </a>
        </div>
      </div>
      <div class="row m0 titleRow">
        <div class="fleft titlePart">
          <a href="#">
            <h4 class="heading">Identifiez-vous ou créer un compte:</h4>
          </a>
          <div class="row m0 excerpt">
            <p> Nouveaux clients:</p>
          </div>
        </div>
      </div>

      <div class="row m0 titleRow mb30">
        <div class="fleft titlePart">
          <div class="row m0 excerpt">
            <p>
              En créant un compte aupres de notre site, vous serez en mesure de passer vos commandes
              plus rapidement, consulter et suivre vos commandes, et bien plus encore.
            </p>
          </div>
        </div>
      </div>

      <a href="{{route('user.registration')}}" class="btn btn-yellow btn-sm">Créer un compte</a>

      <!-- Modal -->
      <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h3 class="heading my15">
                Créer un nouveau compte client
              </h3>
            </div>
            <form class="form-default" role="form" action="{{ route('register') }}" method="POST">
              @csrf
              <div class="modal-body">
                <div class="row">
                  <div class="form-group col-xs-12 col-md-6">
                    <input type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" required value="{{ old('name') }}" placeholder="Nom" name="name">
                  </div>
                  <div class="form-group col-xs-12 col-md-6">
                    <input type="text" id="phone-code" required class="border-right-0 h-100 w-100 form-control{{ $errors->has('phone') ? ' is-invalid' : '' }}" value="{{ old('phone') }}" placeholder="Téléphone" name="phone">
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-xs-12 col-md-6">
                    <input type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" required value="{{ old('email') }}" placeholder="{{ __('E-mail') }}" name="email">
                  </div>
                  <div class="form-group col-xs-12 col-md-6">
                    <input type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" required placeholder="Mot de passe" name="password">
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-xs-12 col-md-6">
                    <input type="text" class="form-control" placeholder="Ville" name="city"> <br>
                    <input type="text" class="form-control" required placeholder="Adresse" name="address">
                  </div>
                  <div class="form-group col-xs-12 col-md-6">
                    <input type="password" class="form-control" required placeholder="Confirmer le mot de passe" name="password_confirmation">
                  </div>
                </div>

                <!-- city -->

                <div class="row">
                  <div class="form-group col-xs-12 col-md-6">
                    <button type="submit" class="btn btn-black_hover_yellow btn-block">Valider</button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="modal fade" id="mesg" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h3 class="heading my15">
              Cher "Nom Prenom",
            </h3>
          </div>
          <div class="modal-body">
            <div class="spaceline">
              <p>
                Nous Vous souhaitons la bienvenue sur bricolya.com. Pour vous connecter lors de vos visites
                sur notre site, cliquez sur connexion ou Mon compte en haut de chaque page, puis saisissez
                votre adress electronique et votre mot de passe.
              </p>
            </div>
            <br>
            <div class="spaceline">
              <p> Utilisez les valeurs suivants lorsque vous etes invite a vous connecter: </p>
              <p> Courriel: xxxxx@xxxx.com </p>
              <p> Mot de passe: xxxxxxxx </p>
            </div>
            <div class="spaceline">
              <p> En vous connectant a votre compte, vous pourrez: </p>
              <br>
              <ul>
                <li>
                  <p>Passez vos commandes plus repidement</p>
                </li>
                <li>
                  <p>Suivez I'evolution de vos commandes</p>
                </li>
                <li>
                  <p>Consultez vos commandes passees</p>
                </li>
                <li>
                  <p>Modifier Les informations de votre compte</p>
                </li>
                <li>
                  <p>changer votre mot de passe</p>
                </li>
                <li>
                  <p>Enregistrement de plusieurs adresses</p>
                </li>
              </ul>
              <br>
              <p> Si vous avez des questions concernant votre compte ou toute autre question, n'hesitez pas a nous contacter a
                I'adresse contact@bricolya.com ou par telephone au 05 22 450 077865872314</p>
            </div>
          </div>

        </div>
      </div>
    </div>

    <!-- (.p2_relation_mv_down {  margin: 70px auto 0 auto;}) this call is for margin the header  -->
    <div class="row col-sm-6 my15">
      <div class="row m0">
        <h3 class="heading">Vous avez Déjà un compte?</h3>
        <h3 class="heading">Connectez-vous!</h3>
      </div>
      <div class="row m0 contactForm">
        <form class="row m0" id="contactForm" method="POST" name="contact" action="{{ route('login') }}">
          @csrf
          <div class="row m0">
            <label for="name">E-mail:</label>
            <input type="email" required class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}" placeholder="" name="email">

          </div>
          <div class="row m0">
            <label for="subject">Mot de passe:</label>
            <input type="password" required class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}" placeholder="" name="password" id="password">
          </div>
          <div class="row m0">
            <label for="subject">
              <a href="#"> Mot de passe oubile </a>
            </label>
          </div>

          <button class="btn btn-dark btn-sm" type="submit">Se connecter</button>
        </form>
        <div id="success">
          <span class="green textcenter">
            Your message was sent successfully! I will be in touch as soon as I can.
          </span>
        </div>
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