@extends('Backend.backend-master')

@section('title')
    Manage Admin!
@endsection

@section('content')

    <div class="row" style="margin-top: 90px;">
        <div class="col-md-8 offset-md-2 text-center">
            <div class="card">
                <div class="card-body">
                    <div class="border p-3 rounded table-responsive">
                        <h2 class="mb-0 text-uppercase text-center" style="font-weight:500;">All Authors</h2>
                        <h3>
                            {{ Session::get('msg') }}
                        </h3>
                        <hr>
                        <table class="table table-striped table-bordered table-hover bg-light-purple">
                            <tr>
                                <th scope="col">Admin Id</th>
                                <th scope="col">Full Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>

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
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
