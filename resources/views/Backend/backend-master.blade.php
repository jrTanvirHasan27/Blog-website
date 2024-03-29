<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>@yield('title')</title>

    @include('Backend.include.style')
</head>

<body>

@include('Backend.include.header')

@include('Backend.include.left-sidebar')

@yield('content')

@include('Backend.include.footer')

@include('Backend.include.script')

</body>

</html>
