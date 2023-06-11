<nav class="topnav navbar navbar-expand-lg navbar-light bg-white fixed-top">
    <div class="container">
        <a class="navbar-brand" href="{{ route('blog.home') }}"><strong>INSIGHTS OF TOMORROW</strong></a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarColor02"
            aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbarColor02" style="padding-left: 360px;">
            <ul class="navbar-nav mr-auto d-flex align-items-center">
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('blog.home') }}">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        Category
                    </a>
                    <ul class="dropdown-menu">
                        @foreach ($items as $item)
                            <li><a class="dropdown-item" href="#">{{ $item->name }}</a></li>
                        @endforeach
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('about-us') }}">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('contact-us') }}">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('login') }}">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('register') }}">Register</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="jumbotron jumbotron-fluid mb-3 pt-0 pb-0 bg-lightblue position-relative">
        <div class="pl-4 pr-0 h-100 tofront">
            <div class="row justify-content-between">
                <div class="col-md-6 pt-6 pb-6 align-self-center">
                    <h1 class="secondfont mb-3 font-weight-bold">Breaking News: Unveiling the Future at Insights of
                        Tomorrow!</h1>
                    <p class="mb-3">
                        Insights of Tomorrow brings you the latest news and updates on emerging trends, cutting-edge
                        technology, and groundbreaking discoveries. Stay informed, inspired, and ready for the future
                        with our insightful articles.</p>
                    <a href="" class="btn btn-dark">Read More</a>
                </div>
                <div class="col-md-6 d-none d-md-block pr-0"
                    style="background-size:cover;background-image:url({{ asset('front-end-new') }}/assets/img/demo/home.jpg);">
                </div>
            </div>
        </div>
    </div>
</div>
