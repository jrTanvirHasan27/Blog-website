@extends('Frontend.frontend-master')

@section('title')
    About Us
@endsection

@section('content')

    <div class="container">
        <h1 class="display-4 secondfont mb-3 font-weight-bold text-center">MEET OUR TEAM</h1>
        <div class="jumbotron jumbotron-fluid mb-3 pl-0 pt-0 pb-0 bg-white position-relative">
            <div class="h-100 tofront">
                <div class="row justify-content-between">
                    <div class="col-md-6 pt-6 pb-6 pr-6 align-self-center">
                        <h1 class="display-4 secondfont mb-3 font-weight-bold">TANVIR AHMED</h1>
                    </div>
                    <div class="col-md-6 pt-6 pb-6 pr-6 align-self-center">
                        <a target="_blank" href="#">
                            <img class=""
                                 src="{{ asset('admin-asset-new') }}/assets/images/gallery/01.png">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
