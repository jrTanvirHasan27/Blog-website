@extends('Backend.backend-master')

@section('title')
    Create Category!
@endsection

@section('content')

    <div class="container" style="margin-top: 90px;">
        <div class="row">
            <div class="col-xl-10 offset-md-1 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <h1 class="text-center">Create Category</h1>
                        <h3>{{ Session::get('msg') }}</h3>
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <p>{{ $error }}</p>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <div class="border p-3 rounded">
                            <form action="{{ route('category.add.submit') }}" method="post"
                                  enctype="multipart/form-data">
                                @csrf
                                <div class="col-12">
                                    <label class="form-label">Category Name</label>
                                    <input type="text" name="name" class="form-control">
                                </div>
                                <div class="col-12 my-2">
                                    <label class="form-label">Category Description</label>
                                    <textarea name="desc" class="form-control" id="exampleInputPassword1"
                                              rows="4"></textarea>
                                </div>
                                <div class="col-12 my-2">
                                    <label for="formFile" class="form-label">Category Image</label>
                                    <input name="image" class="form-control" type="file" id="formFile">
                                </div>
                                <div class="col-12 my-2">
                                    <div class="d-grid">
                                        <button type="submit" class="btn btn-primary form-control">Add Category
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
