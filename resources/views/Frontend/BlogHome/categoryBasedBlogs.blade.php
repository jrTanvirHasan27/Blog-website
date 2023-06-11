@extends('Frontend.frontend-master')

@section('title')
    {{ $category->name }}
@endsection

@section('content')
    <div class="container">
        <br>
        <div class="row">
            <h1>Blogs of {{ $category->name }} category</h1>
            <!-- Nested row for non-featured blog posts-->
            <div class="row">
                @foreach ($blogs as $blog)
                    <!-- Blog post-->
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <img class="card-img-top" src="{{ asset('/') }}blogpost-image/{{ $blog->blog_image }}"
                                 alt="..." style="height: 375px;"/>
                            <div class="card-body" style="text-align: justify;">
                                <div class="small text-muted">{{ date('M d, Y', strtotime($blog->created_at)) }}</div>
                                <h2 class="card-title h4">{{ $blog->blog_title }}</h2>
                                @if (Str::length($blog->blog_title) <= 50)
                                    <p class="card-text">{{ Str::substr($blog->blog_desc, 0, 170) . '...' }}</p>
                                @else
                                    <p class="card-text">{{ Str::substr($blog->blog_desc, 0, 150) . '...' }}</p>
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
                <hr class="my-0"/>
                <ul class="pagination justify-content-center my-4">
                    {{ $blogs->links() }}
                </ul>
            </nav>
        </div>
    </div>
    </div>
@endsection
