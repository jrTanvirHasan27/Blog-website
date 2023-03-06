<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>@yield('title')</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

    <!-- Google Fonts -->
    <link
        href='{{ asset('/') }}Frontend/Slider/http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
        rel='stylesheet' type='text/css'>
    <link href='{{ asset('/') }}Frontend/Slider/http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
        rel='stylesheet' type='text/css'>
    <link href='{{ asset('/') }}Frontend/Slider/http://fonts.googleapis.com/css?family=Raleway:400,100'
        rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    {{-- <link rel="stylesheet" href="{{ asset('/') }}Frontend/Slider/css/bootstrap.min.css"> --}}

    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ asset('/') }}Frontend/Slider/css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="{{ asset('/') }}Frontend/Slider/css/owl.carousel.css">
    <link rel="stylesheet" href="{{ asset('/') }}Frontend/Slider/style.css">
    <link rel="stylesheet" href="{{ asset('/') }}Frontend/Slider/css/responsive.css">

    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="{{ asset('/') }}Frontend/css/styles.css" rel="stylesheet" />
</head>

<body>
    <!-- Responsive navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#!">Start Bootstrap</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="{{ route('blog.home') }}">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
                    <li class="nav-item"><a href="{{ route('login') }}" class="nav-link">Login</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active" href="#" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Register
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <li><a class="dropdown-item" href="#">Register as a member</a></li>
                            <li>
                                <a class="dropdown-item" href="{{ route('register') }}">Register as a admin</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    @yield('content')
    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p>
        </div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>

    <!-- Core theme JS-->
    <script src="{{ asset('/') }}Frontend/js/scripts.js"></script>

    <!-- Main Script -->
    <script src="js/main.js"></script>

    <!-- Slider -->
    <script type="text/javascript" src="{{ asset('/') }}Frontend/Slider/js/bxslider.min.js"></script>
    <script type="text/javascript" src="{{ asset('/') }}Frontend/Slider/js/script.slider.js"></script>
</body>

</html>
