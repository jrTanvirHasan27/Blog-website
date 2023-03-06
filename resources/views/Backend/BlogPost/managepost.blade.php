@extends('Backend.backend-master')

@section('title')
    Manage Posts!
@endsection

@section('content')
    <div class="container">
        <br>
        <div class="row">
            <h1 align="center">
                All Blog Posts
            </h1>
            <h3>
                {{ Session::get('msg') }}
            </h3>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Blogpost ID</th>
                        <th scope="col">Blogpost Title</th>
                        <th scope="col">Blogpost Description</th>
                        <th scope="col">Blogpost Image</th>
                        <th scope="col">Blogpost Category</th>
                        <th scope="col">Status</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($blogpost as $blogposts)
                        <tr>
                            {{-- <th scope="row">{{$loop->iteration}}</th> --}}
                            <th scope="row">{{ $blogposts->id }}</th>
                            <td>{{ $blogposts->blog_title }}</td>
                            <td>{{ $blogposts->blog_desc }}</td>
                            {{-- <td>{{ $categories->price }}</td> --}}
                            <td><img height="75px" width="75px"
                                    src="{{ asset('/') }}blogpost-image/{{ $blogposts->blog_image }}" alt="blogpost Image">
                            </td>
                            @foreach ($categories as $category)
                                @if ($category->id == $blogposts->category_id)
                                    <td>{{ $category->name }}</td>
                                @endif
                            @endforeach
                            {{-- <td>
                        {{-- <span
                            class="text-{{ $categories->status == 1 ? 'danger' : 'dark' }}">{{ $categories->status == 1 ? 'active' : 'inactive' }}</span> --}}
                            {{-- {{ $categories->status==1 ? 'active' : 'inactive'}} --
                    </td> --}}
                            <td>
                                <a href="#"
                                    class="btn btn-sm btn-{{ $blogposts->status == 1 ? 'danger' : 'success' }}">
                                    Active
                                </a>
                            </td>
                            <td>
                                <a href="{{ route('blog.edit', ['blogpost_id' => $blogposts->id]) }}"
                                    class="btn btn-sm btn-primary"> Edit </a>
                                <a href="{{ route('blogpost.delete', ['blogpost_id' => $blogposts->id]) }}"
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
