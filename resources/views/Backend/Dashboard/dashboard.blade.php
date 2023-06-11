@extends('Backend.backend-master')

@section('title')
    Dashboard
@endsection

@section('content')
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-8">
            </div>
            <!-- Side widgets-->
            <div class="col-lg-12">
                <div class="card mb-4 my-5">
                    <div class="card-header">Search</div>
                    <div class="card-body">
                        <div class="input-group">
                            <input class="form-control" type="text" placeholder="Enter search term..."
                                   aria-label="Enter search term..." aria-describedby="button-search"/>
                            <button class="btn btn-primary" id="button-search" type="button">Go!</button>
                        </div>
                    </div>
                </div>
                <!-- Categories widget-->
                <div class="card mb-4">
                    <div class="card-header">Categories</div>
                </div>

                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    @foreach ($categories as $category)
                        <li class="nav-item" role="presentation">
                            <button @if ($loop->iteration == 1) class="nav-link active" @else class="nav-link" @endif
                            id="pills-{{ $category->id }}-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-{{ $category->id }}" type="button" role="tab"
                                    aria-controls="pills-{{ $category->id }}" aria-selected="true">{{ $category->name }}
                            </button>
                        </li>
                    @endforeach
                </ul>
                <!-- Side widgets-->
                <div class="tab-content" id="pills-tabContent">
                    @foreach ($categories as $category)
                        <div @if ($loop->iteration == 1) class="card tab-pane fade show active"
                             @else class="card tab-pane fade show" @endif
                             id="pills-{{ $category->id }}" role="tabpanel"
                             aria-labelledby="pills-{{ $category->id }}-tab"
                             tabindex="0" style="width: 26rem;">
                            <img src="{{ asset('/') }}category-image/{{ $category->image }}" class="card-img-top"
                                 alt="...">
                            <div class="card-body">
                                <p>{{ $category->desc }}</p>
                                <a href="{{ route('category.explore', ['category_id' => $category->id]) }}"
                                   class="btn btn-primary">Explore</a>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>

@endsection
