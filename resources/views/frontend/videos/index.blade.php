@extends('frontend.layouts.app')
@push('seometa')
<title>BRICOLYA -  Matériel de bricolage et outillage en ligne</title>
<meta name="description" content="Chez Bricolya, Retrouvez toute une gamme de matériels de bricolage en ligne chez BRICOLYA, vente de matériels d'outillage, de quincaillerie, sanitaire et plomberie, cadenas et serrure" />
<meta name="keywords" content="">
@endpush
@section('content')
<section id="videoPage" class="row contentRowPad">
      <div class="container">
            <h3 class="heading">Vidéothèque</h3>
            <div class="row mb30">

                <!-- start -->
                @foreach(\App\Video::all() as $video)
                <div class="card col-sm-6 my15">
                  <div class="card mb-4 box-shadow">
                    <div class="card-body">
                      <!-- Header -->
                      <h4 class="card-title heading">{{$video->title}}</h4>
                      <p class="card-text">{{$video->description}}
                        <a href="#" class="label label-danger">more</a></p>
                      </div>
                      <!-- video -->
                      <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="{{$video->link}}" allowfullscreen></iframe>
                      </div>
                      <!-- Link -->
                      <p class="row">
                        <div class="col-sm-7">
                          <i class="fa fa-share-alt text-left" aria-hidden="true">  Share this video to:</i>
                        </div>
                        <div class="col-sm-5">
                          <ul class="list-inline text-right" >
                              <li ><a href="#"><i class="fa fa-facebook fa-lg" ></i></a></li>
                              <li ><a href="#"><i class="fa fa-twitter fa-lg" ></i></a></li>
                              <li ><a href="#"><i class="fa fa-instagram fa-lg "></i></a></li>
                          </ul>
                        </div>
                      </p>
                      <!-- Close link icon -->
                    </div>
                </div>
                @endforeach
                <!-- end -->
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
                   <a href="{{url('flash_products')}}">
				   <button type="button" class="btn btn-yellow btn-sm"> J'en profite </button>
				   </a>
                </div>
            </div>
        </div>
    </section>
    <!-- Banner End -->
@endsection