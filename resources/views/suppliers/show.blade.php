@extends('layouts.app')

@section('content')

    <!-- Basic Data Tables -->
    <!--===================================================-->
    <div class="panel">
        <div class="panel-body">
            <div class="invoice-masthead">
                <div class="invoice-text">
                    <h3 class="h1 text-thin mar-no text-primary">{{ __('Supplier Details') }}</h3>
                </div>
            </div>
            <div class="invoice-bill row">

                <div class="col-sm-12 text-xs-center">
                    <table class="invoice-details">
                        <tbody>
                        <tr>
                            <td class="text-main text-bold">
                                {{__('# Order')}}
                            </td>
                            <td class="text-right text-info text-bold">
                                {{ $supplier->id }}
                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                {{__('Nom et prénom')}}
                            </td>

                            <td class="text-right text-info text-bold">
                                {{ $supplier->name }}
                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                {{__('Ville')}}
                            </td>
                            <td class="text-right">
                                {{ ($supplier->city) }}
                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                {{__('Ville')}}
                            </td>
                            <td class="text-right">
                                {{ ($supplier->city) }}
                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                {{__('Téléphone')}}
                            </td>
                            <td class="text-right">
                                {{ ($supplier->phone) }}
                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                {{__('Web Site')}}
                            </td>
                            <td class="text-right">
                                {{ ($supplier->website) }}
                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                {{__('Category Specialty')}}
                            </td>
                            <td class="text-right">
                                {{ ($supplier->category_Specialty) }}
                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                {{__('Catalogue')}}
                            </td>
                            <td class="text-right">
                                @if($supplier->catalogue)
                                    <a href="/public/{{($supplier->catalogue)}}">Télécharger</a>
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                {{__('Products sold')}}
                            </td>
                            <td class="text-right">
                                {{ ($supplier->products_sold) }}
                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                {{__('Activity descrition')}}
                            </td>
                            <td class="text-right">
                                {{ ($supplier->activity_descrition) }}
                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                {{__('Referral code')}}
                            </td>
                            <td class="text-right">
                                {{ ($supplier->referral_code) }}
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <hr class="new-section-sm bord-no">
        </div>
    </div>

@endsection


@section('script')
    <script type="text/javascript">

    </script>
@endsection
