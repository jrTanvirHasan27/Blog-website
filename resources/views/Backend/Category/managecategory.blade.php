@extends('Backend.backend-master')

@section('title')
    Manage Category!
@endsection

@section('content')

    <div class="row" style="margin-top: 90px;">
        <div class="col-md-8 offset-md-2">
            <div class="card">
                <div class="card-body">
                    <div class="border p-3 rounded table-responsive">
                        <h2 class="mb-0 text-uppercase text-center" style="font-weight:500;">All Categories</h2>
                        <hr>
                        <table class="table table-striped table-bordered table-hover bg-light-purple">
                            <tr>
                                <th scope="col">Category ID</th>
                                <th scope="col">Category Name</th>
                                <th scope="col">Category Description</th>
                                <th scope="col">Category Image</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>

                            @foreach ($category as $categories)
                                <tr>
                                    {{-- <th scope="row">{{$loop->iteration}}</th> --}}
                                    <th scope="row">{{ $categories->id }}</th>
                                    <td>{{ $categories->name }}</td>
                                    <td>{{ $categories->desc }}</td>
                                    {{-- <td>{{ $categories->price }}</td> --}}
                                    <td><img height="75px" width="75px"
                                             src="{{ asset('/') }}category-image/{{ $categories->image }}"
                                             alt="Category Image"></td>
                                    {{-- <td>
                                    {{-- <span
                                        class="text-{{ $categories->status == 1 ? 'danger' : 'dark' }}">{{ $categories->status == 1 ? 'active' : 'inactive' }}</span> --}}
                                    {{-- {{ $categories->status==1 ? 'active' : 'inactive'}} --
                                </td> --}}
                                    <td>
                                        <a href="#"
                                           class="btn btn-sm btn-{{ $categories->status == 1 ? 'danger' : 'success' }}">
                                            Active
                                        </a>
                                    </td>
                                    <td>
                                        <a href="{{ route('category.edit', ['category_id' => $categories->id]) }}"
                                           class="btn btn-sm btn-primary"> Edit </a>
                                        <a href="{{ route('category.delete', ['category_id' => $categories->id]) }}"
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
