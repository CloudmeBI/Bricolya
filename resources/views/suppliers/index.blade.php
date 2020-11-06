@extends('layouts.app')

@section('content')

    <!-- Basic Data Tables -->
    <!--===================================================-->
    <div class="panel">
        <div class="panel-heading bord-btm clearfix pad-all h-100">
            <h3 class="panel-title pull-left pad-no">{{__('Orders')}}</h3>

            <div class="pull-right clearfix">
                <form class="" id="sort_orders" action="" method="GET">
                    <div class="box-inline pad-rgt pull-left">
                        <div class="" style="min-width: 200px;">
                            <input type="text" class="form-control" id="search" name="search"@isset($sort_search) value="{{ $sort_search }}" @endisset placeholder="Type Order code & hit Enter">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="panel-body">
            <table class="table table-striped res-table mar-no" cellspacing="0" width="100%">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Nom</th>
                    <th>Email</th>
                    <th>Téléphone</th>
                    <th width="10%">{{__('Catalogue')}}</th>
                    <th width="10%">{{__('options')}}</th>
                </tr>
                </thead>
                <tbody>
                @foreach ($suppliers as $key => $supplier)
                    <tr>
                        <td>
                            {{ $supplier->id }}
                        </td>
                        <td>
                            {{ $supplier->name }}
                        </td>
                        <td>
                            {{ $supplier->email }}
                        </td>
                        <td>
                            {{ $supplier->phone }}
                        </td>
                        <td>
                            @if($supplier->catalogue)
                                <a href="/public/{{($supplier->catalogue)}}">Télécharger</a>
                            @endif
                        </td>
                        <td>
                            <div class="btn-group dropdown">
                                <button class="btn btn-primary dropdown-toggle dropdown-toggle-icon" data-toggle="dropdown" type="button">
                                    {{__('Actions')}} <i class="dropdown-caret"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a href="{{route('suppliers.show', ($supplier->id))}}">{{__('Détails')}}</a></li>
{{--                                    <li><a onclick="confirm_modal('{{route('supplier.show', $supplier->id)}}');">{{__('Delete')}}</a></li>--}}
                                </ul>
                            </div>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
            <div class="clearfix">
                <div class="pull-right">
                    {{ $suppliers->appends(request()->input())->links() }}
                </div>
            </div>
        </div>
    </div>

@endsection


@section('script')
    <script type="text/javascript">

    </script>
@endsection
