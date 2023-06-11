@extends('Frontend.frontend-master')

@section('title')
    Read Blog!
@endsection

@section('content')
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-8">
                <!-- Post content-->
                <article>
                    <!-- Post header-->
                    <header class="mb-4">
                        <!-- Post title-->
                        <h1 class="fw-bolder mb-1">{{ $blog->blog_title }}</h1>
                        <!-- Post meta content-->
                        <div class="text-muted fst-italic mb-2">Posted on {{ date('M d, Y', strtotime($blog->created_at)) }}
                            by <span class="text-dark">{{ $poster->name }}</span></div>
                        <!-- Post categories-->
                        <a class="badge bg-secondary text-decoration-none link-light" href="#!">{{ $category->name }}</a>
                    </header>
                    <!-- Preview image figure-->
                    <figure class="mb-4"><img class="img-fluid rounded"
                            src="{{ asset('/') }}blogpost-image/{{ $blog->blog_image }}" alt="..." width="900px"
                            style="height: 450px;" /></figure>
                    <!-- Post content-->
                    <section class="mb-5" style="text-align: justify;">
                        <p class="fs-5 mb-4">{{ $blog->blog_desc }}</p>
                    </section>
                </article>
                <!-- Comments section-->
                <section class="mb-5">
                    <div class="card bg-light">
                        <div class="card-body">
                            <!-- Comment form-->
                            <form class="mb-4" action="{{ route('comment.submit', ['blog_id' => $blog->id]) }}"
                                method="POST">
                                @csrf
                                <textarea name="comment" class="form-control" rows="3" placeholder="Join the discussion and leave a comment!"></textarea>
                                <br>
                                <button type="submit" class="btn btn-primary">Comment</button>
                            </form>
                            @foreach ($comments as $comment)
                                @if ($comment->blogpost_id == $blog->id)
                                    <div class="d-flex">
                                        <div class="flex-shrink-0"><img class="rounded-circle"
                                                src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                        <div class="ms-3">
                                            @foreach ($users as $user)
                                                @if ($user->id == $comment->cmntPoster_id)
                                                    <div class="fw-bold">{{ $user->name}}</div>
                                                @endif
                                            @endforeach
                                            {{ $comment->cmnt }}
                                        </div>
                                    </div>
                                    <br>
                                @endif
                            @endforeach
                        </div>
                    </div>
                </section>
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
                            id="pills-{{ $category->id }}" role="tabpanel" aria-labelledby="pills-{{ $category->id }}-tab"
                            tabindex="0" style="width: 353px;">
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
