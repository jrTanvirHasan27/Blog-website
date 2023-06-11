<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>@yield('title')</title>
    @include('Frontend.include.style')
</head>

<body>
@include('Frontend.include.header')

@yield('content')

@include('Frontend.include.footer')

@include('Frontend.include.script')
</body>

</html>
