@extends('Frontend.frontend-master')

@section('title')
    Contact Us
@endsection

@section('content')
    <br>
    <div class="container">
        <div class="row col-md-10 offset-1">
            <div class="card">
                <div class="card-body">
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Name</label>
                                <input type="text" class="form-control" id="inputEmail4" placeholder="Name">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Email</label>
                                <input type="email" class="form-control" id="inputPassword4" placeholder="Eamil">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Name</label>
                            <input type="text" class="form-control" id="inputAddress" placeholder="Keanu">
                        </div>
                        <div class="form-group">
                            <label for="inputAddress2">Subject</label>
                            <input type="text" class="form-control" id="inputAddress2">
                        </div>

                        <div class="form-group">
                            <label for="inputAddress2">Message</label>
                            <textarea type="text" class="form-control"></textarea>
                        </div>

                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-primary form-control">Send Message</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
@endsection
