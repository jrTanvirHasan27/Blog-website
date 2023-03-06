@extends('Backend.backend-master')

@section('title')
    Update Blog Post!
@endsection

@section('content')
    <div class="container">
        <br>
        <h1 align="center">Update Blog Post</h1>
        <h3>{{ Session::get('msg') }}</h3>
        <form action="{{ route('blog.edit.submit', ['blogpost_id' => $blogpost->id]) }}" method="post"
            enctype="multipart/form-data">
            @csrf
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Blog Title</label>
                <input value="{{ $blogpost->blog_title }}" name="blog_title" type="text" class="form-control"
                    id="exampleInputEmail1" aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Blog Description</label>
                <textarea name="blog_desc" class="form-control" id="exampleInputPassword1" rows="4">
                    {{ $blogpost->blog_desc }}
                </textarea>
            </div>
            <div class="mb-3">
                <label for="exampleSelect1" class="form-label">Blog Category</label>
                <select name="category_id" class="form-select" id="exampleSelect1" aria-label="Default select example">
                    @foreach ($categories as $category)
                        @if ($category->id == $blogpost->category_id)
                            <option selected value="{{ $category->id }}">{{ $category->name }}</option>
                        @else
                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                        @endif
                    @endforeach
                </select>
            </div>
            <div class="mb-3">
                <label for="formFile" class="form-label">Blog Image</label>
                <input name="blog_image" class="form-control" type="file" id="formFile">
            </div>
            <button type="submit" class="btn btn-primary">Update Post</button>
        </form>
    </div>
    <br>
    <br>
@endsection
