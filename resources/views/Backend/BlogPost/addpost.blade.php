@extends('Backend.backend-master')

@section('title')
    Add Blog Post!
@endsection

@section('content')

    <div class="container" style="margin-top: 90px;">
        <div class="row">
            <div class="col-xl-10 offset-md-1 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <h1 class="text-center">Create Blog</h1>
                        <h3>{{ Session::get('msg') }}</h3>
                        <div class="border p-3 rounded">
                            <form action="{{ route('blogpost.add.submit') }}" method="post"
                                  enctype="multipart/form-data">
                                @csrf
                                <div class="col-12">
                                    <label class="form-label">Blog Title</label>
                                    <input name="blog_title" type="text" class="form-control" id="exampleInputEmail1"
                                           aria-describedby="emailHelp">
                                </div>

                                <div class="col-12 my-2">
                                    <label class="form-label">Blog Description</label>
                                    <textarea name="blog_desc" class="form-control" id="exampleInputPassword1"
                                              rows="4"></textarea>
                                </div>

                                <div class="col-12 my-2">
                                    <label for="exampleSelect1" class="form-label">Blog Category</label>
                                    <select name="category_id" class="form-select" id="exampleSelect1"
                                            aria-label="Default select example">
                                        <option selected>Select a Category</option>
                                        @foreach ($categories as $category)
                                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="col-12 my-2">
                                    <label for="formFile" class="form-label">Blog Image</label>
                                    <input name="blog_image" class="form-control" type="file" id="formFile">
                                </div>

                                <div class="col-12 my-2">
                                    <div class="d-grid">
                                        <button type="submit" class="btn btn-primary form-control">Add Blog
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
