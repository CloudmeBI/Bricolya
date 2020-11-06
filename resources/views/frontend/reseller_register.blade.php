@extends('frontend.layouts.app')

@section('content')

    <section class="row">
        @if(session()->has('success'))
            <div class="alert alert-success">{{session()->get('success')}}</div>
        @endif
        <div class="container contentRowPad">
            <div class="row col-sm-12">
                <div class="fleft titlePart">
                    <h3 class="contactHeading heading">Espace Revendeur</h3>
                    <div class="row m0 excerpt">
                        <p>
                            En Créant un compte auprès de notre site, vous serez en mesure de passer vos commandes
                            plus rapidement, consulter et suivre vos commandes, et bien plus encore.
                        </p>
                    </div>
                </div>
            </div>

            <div class="row col-sm-12">
                <div class="row m0 titleRow  ">
                    <div class="titlePart">

                        <form action="{{route('reseller.register')}}" method="post" id="sellerForm" enctype="multipart/form-data">
                            @csrf
                            <div class="modal-body">
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Nom" name="last_name">
                                        @error('last_name')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Description de l’activité" name="activity_descrition">
                                        @error('activity_descrition')
                                            <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control"placeholder="Prénom" name="first_name">
                                        @error('first_name')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Produits vendus" name="products_sold">
                                        @error('products_sold')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="email" class="form-control" placeholder="E-mail" name="email">
                                        @error('email')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Ville" name="city">
                                        @error('city')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-12">
                                        <input type="text" class="form-control" placeholder="Adresse" name="address">
                                        @error('address')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Téléphone" name="telephone">
                                        @error('telephone')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Site web" name="website">
                                        @error('website')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="password" class="form-control" placeholder="Mot de passe" name="password">
                                        @error('password')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="password" class="form-control" placeholder="Confirmer le mot de passe" name="confirm_password">
                                        @error('confirm_password')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Catégorie / Spécialité" name="category_Specialty">
                                        @error('category_Specialty')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>


                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="file" name="document" value="Choisir un fichier" style="color: black;">
                                        <p style="font-size: 13px;">Formats autorisés: pdf, doc</p>
                                        @error('document')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>


                                </div>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <button type="submit" class="btn btn-black_hover_yellow btn-lg btn-block" form="sellerForm">Valider</button>
                                    </div>
                                </div>
                            </div>
                        </form>
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
                <p>Adresse: High dis 99-100 rue Metz Casablance - Macroc</p>
                <p>Telephone: +212 522 450 854</p>
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
