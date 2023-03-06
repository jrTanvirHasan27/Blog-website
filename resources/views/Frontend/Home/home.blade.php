@extends('Frontend.frontend-master')

@section('title')
    Home Page!
@endsection

@section('content')
    <!-- Page header with logo and tagline-->
    <header class="py-5 border-bottom mb-4">
        <div class="slider-area">
            <!-- Slider -->
            <div class="block-slider block-slider4">
                <ul class="" id="bxslider-home4">
                    <li>
                        <img src="{{ asset('/') }}Frontend/Slider/img/h4-slide.png" alt="Slide">
                        <div class="caption-group">
                            <h2 class="caption title">
                                iPhone <span class="primary">6 <strong>Plus</strong></span>
                            </h2>
                            <h4 class="caption subtitle">Dual SIM</h4>
                            <a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
                        </div>
                    </li>
                    <li><img src="{{ asset('/') }}Frontend/Slider/img/h4-slide2.png" alt="Slide">
                        <div class="caption-group">
                            <h2 class="caption title">
                                by one, get one <span class="primary">50% <strong>off</strong></span>
                            </h2>
                            <h4 class="caption subtitle">school supplies & backpacks.*</h4>
                            <a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
                        </div>
                    </li>
                    <li><img src="{{ asset('/') }}Frontend/Slider/img/h4-slide3.png" alt="Slide">
                        <div class="caption-group">
                            <h2 class="caption title">
                                Apple <span class="primary">Store <strong>Ipod</strong></span>
                            </h2>
                            <h4 class="caption subtitle">Select Item</h4>
                            <a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
                        </div>
                    </li>
                    <li><img src="{{ asset('/') }}Frontend/Slider/img/h4-slide4.png" alt="Slide">
                        <div class="caption-group">
                            <h2 class="caption title">
                                Apple <span class="primary">Store <strong>Ipod</strong></span>
                            </h2>
                            <h4 class="caption subtitle">& Phone</h4>
                            <a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- ./Slider -->
        </div> <!-- End slider area -->
    </header>
    <!-- Page content-->
    <div class="container">
        <div class="row">
            <!-- Blog entries-->
            <div class="col-lg-8">
                <!-- Featured blog post-->
                <div class="card mb-4">
                    <a href="#!"><img class="card-img-top"
                            src="{{ asset('/') }}blogpost-image/{{ $feature_post->blog_image }}" alt="..."
                            style="height: 500px;" /></a>
                    <div class="card-body" style="text-align: justify">
                        <div class="small text-muted">{{ date('M d, Y', strtotime($feature_post->created_at)) }}</div>
                        <h2 class="card-title text-justify">{{ $feature_post->blog_title }}</h2>
                        <p class="card-text text-justify">{{ Str::substr($feature_post->blog_desc, 0, 200) . '...' }}</p>
                        <a class="btn btn-primary"
                            href="{{ route('blog.read', ['blogpost_id' => $feature_post->id]) }}">Read more →</a>
                    </div>
                </div>
                <!-- Nested row for non-featured blog posts-->
                <div class="row">
                    @foreach ($blogs as $blog)
                        <div class="col-lg-6">
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <img class="card-img-top" src="{{ asset('/') }}blogpost-image/{{ $blog->blog_image }}"
                                    alt="..." style="height: 300px;" />
                                <div class="card-body" style="text-align: justify;">
                                    <div class="small text-muted">{{ date('M d, Y', strtotime($blog->created_at)) }}</div>
                                    <h2 class="card-title h4">{{ $blog->blog_title }}</h2>
                                    @if (Str::length($blog->blog_title) <= 55)
                                        <p class="card-text">{{ Str::substr($blog->blog_desc, 0, 150) . '...' }}</p>
                                    @else
                                        <p class="card-text">{{ Str::substr($blog->blog_desc, 0, 100) . '...' }}</p>
                                    @endif
                                    <a class="btn btn-primary"
                                        href="{{ route('blog.read', ['blogpost_id' => $blog->id]) }}">Read more →</a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                <!-- Pagination-->
                <nav aria-label="Pagination">
                    <hr class="my-0" />
                    <ul class="pagination justify-content-center my-4">
                        {{ $blogs->links() }}
                        {{-- <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1"
                                aria-disabled="true">Newer</a></li>
                        <li class="page-item active" aria-current="page"><a class="page-link" href="#!">1</a></li>
                        <li class="page-item"><a class="page-link" href="#!">2</a></li>
                        <li class="page-item"><a class="page-link" href="#!">3</a></li>
                        <li class="page-item disabled"><a class="page-link" href="#!">...</a></li>
                        <li class="page-item"><a class="page-link" href="#!">15</a></li>
                        <li class="page-item"><a class="page-link" href="#!">Older</a></li> --}}
                    </ul>
                </nav>
            </div>
            <!-- Side widgets-->
            <div class="col-lg-4">
                <div class="card mb-4">
                    <div class="card-header">Search</div>
                    <div class="card-body">
                        <div class="input-group">
                            <input class="form-control" type="text" placeholder="Enter search term..."
                                aria-label="Enter search term..." aria-describedby="button-search" />
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
                        <div @if ($loop->iteration == 1) class="card tab-pane fade show active" @else class="card tab-pane fade show" @endif
                            id="pills-{{ $category->id }}" role="tabpanel"
                            aria-labelledby="pills-{{ $category->id }}-tab" tabindex="0" style="width: 26rem;">
                            <img src="{{ asset('/') }}category-image/{{ $category->image }}" class="card-img-top"
                                alt="...">
                            <div class="card-body">
                                <p>{{ $category->desc }}</p>
                                <a href="{{ route('category.explore', ['category_id' => $category->id]) }}" class="btn btn-primary">Explore</a>
                            </div>
                        </div>
                    @endforeach
                </div>

                <!-- Side widget-->
                <div class="card mb-4">
                    <div class="card-header">Ad Post</div>
                    <div class="card-body">You can put anything you want inside of these side widgets. They are easy to
                        use, and feature the Bootstrap 5 card component!</div>
                </div>
            </div>

        </div>
    </div>
@endsection
