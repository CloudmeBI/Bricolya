@extends('frontend.layouts.app')
@push('seometa')
<title>BRICOLYA -  Matériel de bricolage et outillage en ligne</title>
<meta name="description" content="Bricolya répond à votre demande en renseignant vos coordonnées, un expert répondra à vos questions dans les meilleurs délais." />
<meta name="keywords" content="">
@endpush
@section('content')
	<section id="contactRow" class="row contentRowPad">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="row m0">
                      <h4 class="contactHeading heading">Contactez-nous </h4>
                    </div>
                    <div class="row m0 contactForm">
                        <form class="row m0" id="contactForm" method="post" name="contact" action="{{url('send_contact_mail')}}">
                            @csrf
                            <div class="row m0">
                              <label for="name">Nom *:</label>
                              <input type="text" class="form-control" required="" name="name" id="name">
                            </div>
                            <div class="row m0">
                              <label for="email">Adresse mail *:</label>
                              <input type="email" class="form-control" name="email" id="email">
                            </div>
                            <div class="row m0">
                                <label for="subject">Sujet *:</label>
                                <input type="text" class="form-control" name="subject" id="subject">
                            </div>
                            <div class="row m0">
                                <label for="message">Message:</label>
                                <textarea name="message" id="message" class="form-control"></textarea>
                            </div>
                            <button class="btn btn-dark btn-sm filled" type="submit">Envoyer</button>
                        </form>

                        @if(session()->has('message'))
                            <div class="alert alert-success">
                                {{ session()->get('message') }}
                            </div>
                        @endif

                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="map-responsive">
                  			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3323.705556204801!2d-7.6113486852881795!3d33.586993449552104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda7cd60509bcb33%3A0xaae093fd26a45b09!2sHigh%20Dist!5e0!3m2!1sen!2sth!4v1595233128156!5m2!1sen!2sth"
                        style="border:0" allowfullscreen>
                  			</iframe>
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
                <p>Adresse: High dis 99-100 rue Metz Casablanca - Maroc</p>
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
                   <a href="#" class="btn btn-dark">J'en profite</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Banner End -->
@endsection
