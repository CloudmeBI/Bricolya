@extends('layouts.app')

@section('content')

    <div class="col-lg-6 col-lg-offset-3">
        <h2><a href="{{'/'.asset('/static_files/catalogue_client.pdf')}}" class="btn btn-primary">Catalogue actuel</a></h2>
        @if(session()->has('success'))
            <div class="alert alert-success">{{session()->get('success')}}</div>
        @endif
        <div class="panel">
            <div class="panel-heading">

                <h3 class="panel-title">{{__('Uploader Catalogue')}}</h3>
            </div>

            <!--Horizontal Form-->
            <!--===================================================-->


            <form class="form-horizontal" action="{{ route('catalogue.client.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="panel-body">

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="file">{{__('File')}} <small>PDF</small></label>
                        <div class="col-sm-10">
                            <input type="file" id="file" name="file" class="form-control" accept="application/pdf,application">
                        </div>
                    </div>

                </div>
                <div class="panel-footer text-right">
                    <button class="btn btn-purple" type="submit">{{__('Save')}}</button>
                </div>
            </form>
            <!--===================================================-->
            <!--End Horizontal Form-->

        </div>
    </div>

@endsection
