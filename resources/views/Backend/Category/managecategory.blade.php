@extends('Backend.backend-master')

@section('title')
    Manage Category!
@endsection

@section('content')
    <div class="container">
        <br>
        <div class="row">
            <h1 align="center">
                All Categories
            </h1>
            <h3>
                {{ Session::get('msg') }}
            </h3>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Category ID</th>
                        <th scope="col">Category Name</th>
                        <th scope="col">Category Description</th>
                        <th scope="col">Category Image</th>
                        <th scope="col">Status</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($category as $categories)
                        <tr>
                            {{-- <th scope="row">{{$loop->iteration}}</th> --}}
                            <th scope="row">{{ $categories->id }}</th>
                            <td>{{ $categories->name }}</td>
                            <td>{{ $categories->desc }}</td>
                            {{-- <td>{{ $categories->price }}</td> --}}
                            <td><img height="75px" width="75px" src="{{ asset('/') }}category-image/{{ $categories->image }}"
                                    alt="Category Image"></td>
                            {{-- <td>
                            {{-- <span
                                class="text-{{ $categories->status == 1 ? 'danger' : 'dark' }}">{{ $categories->status == 1 ? 'active' : 'inactive' }}</span> --}}
                            {{-- {{ $categories->status==1 ? 'active' : 'inactive'}} --
                        </td> --}}
                            <td>
                                <a href="#" class="btn btn-sm btn-{{ $categories->status == 1 ? 'danger' : 'success' }}">
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
    <br>
    <br>
@endsection
