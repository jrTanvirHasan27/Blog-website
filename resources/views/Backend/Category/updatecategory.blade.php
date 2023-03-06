@extends('Backend.backend-master')

@section('title')
    Create Category!
@endsection

@section('content')
    <div class="container">
        <h1 align="center">Update Category</h1>
        <div class="col-md-8 offset-md-2">
            <h3>{{ Session::get('msg') }}</h3>
            <form action="{{ route('category.edit.update', ['category_id' => $category->id]) }}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Category Name</label>
                    <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ $category->name }}">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Category Description</label>
                    <textarea name="desc" class="form-control" id="exampleInputPassword1" rows="4">{{ $category->desc }}</textarea>
                </div>
                <div class="mb-3">
                    <label for="formFile" class="form-label">Category Image</label>
                    <input name="image" class="form-control" type="file" id="formFile">
                </div>
                <button type="submit" class="btn btn-primary">Add Category</button>
            </form>
            <br>
        </div>
    </div>
@endsection
