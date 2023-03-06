@extends('Backend.backend-master')

@section('title')
    Manage Admin!
@endsection

@section('content')
    <div class="container">
        <br>
        <br>
        <h1 align="center">Manage Admin</h1>
        <h3>{{ Session::get('msg') }}</h3>
        <br>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Admin Id</th>
                    <th scope="col">Full Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                    <tr>
                        <td scope="row">{{ $user->id }}</td>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>
                            <a href="#"
                                class="btn btn-sm btn-{{ $user->status == 1 ? 'danger' : 'success' }}">
                                Active
                            </a>
                        </td>
                        <td>
                            <a href="{{ route('user.edit', ['user_id' => $user->id]) }}"
                                class="btn btn-sm btn-primary"> Edit </a>
                            <a href="{{ route('user.delete', ['user_id' => $user->id]) }}"
                                class="btn btn-sm btn-danger"> Delete </a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <br>
        <br>
    </div>
@endsection
