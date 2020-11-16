@extends('frontend.layouts.app')
@push('seometa')
<title>BRICOLYA - Matériel de bricolage et outillage en ligne</title>
<meta name="description" content="Chez Bricolya, Promotions à couper le soufle en  matériels de bricolage, matériels d'outillage, de quincaillerie, sanitaire et plomberie, cadenas et serrure, etc…" />
<meta name="keywords" content="">
@endpush
@section('content')
<section id="breadcrumbRow" class="row">
    <div class="page-top-info">
        <div class="container">
            <h3 style="color: black;">Promotions & Destockage</h3>
        </div>
    </div>
</section>

<section class="row contentRowPadPage">
    <div class="container">
        <div class="row" style="min-height: 250px">
            <!-- Side column -->
            <!-- Side column category filter -->
            {{-- @include('frontend.partials.sidebar_category_filter') --}}
            <!-- End side column -->
            <!-- End side column -->

            <!-- Produt start up -->
            <p class="p-4">
                Aucune offre promotionnelle n'est disponible pour le moment.
            </p>
        </div>
    </div>
</section>
<!-- End Produt -->
@endsection