@extends('Backend.backend-master')

@section('title')
    Update Admin!
@endsection

@section('content')
    <div class="container">
        <br>
        <br>
        <h1 align="center">Update Admin Information</h1>
        <h3>{{ Session::get('msg') }}</h3>
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <form action="{{ route('user.edit.update', ['user_id' => $user->id]) }}" method="post">
            @csrf
            <div class="mb-3">
                <label for="exampleInputName1" class="form-label">Full Name</label>
                <input name="name" type="text" class="form-control" id="exampleInputName1" aria-describedby="nameHelp"
                    value="{{ $user->name }}">
            </div>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
                <input name="email" type="email" class="form-control" id="exampleInputEmail1"
                    aria-describedby="emailHelp" value="{{ $user->email }}">
                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <input name="password" type="password" class="form-control" id="exampleInputPassword1">
            </div>
            <button type="submit" class="btn btn-primary">Update Admin</button>
        </form>
        <br>
        <br>
    </div>
@endsection
