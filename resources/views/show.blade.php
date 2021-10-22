<!doctype html>
<html lang="en-US">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Quang - Dev_Web</title>
    <meta name="description" content="Unika - Responsive One Page HTML5 Template">
    <meta name="keywords" content="HTML5, Bootsrtrap, One Page, Responsive, Template, Portfolio" />
    <meta name="author" content="imransdesign.com">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="{{ asset('images/logo/logo_1.png') }}" />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,500' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="{{asset('asset/inc/bootstrap/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('asset/inc/animations/css/animate.min.css')}}">
    <link rel="stylesheet" href="{{asset('asset/inc/font-awesome/css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('asset/inc/owl-carousel/css/owl.carousel.css')}}">
    <link rel="stylesheet" href="{{asset('asset/inc/owl-carousel/css/owl.theme.css')}}">
    <link rel="stylesheet" href="{{asset('asset/css/reset.css')}}">
    <link rel="stylesheet" href="{{asset('asset/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('asset/css/mobile.css')}}">
    <link rel="stylesheet" href="{{asset('asset/css/skin/cool-gray.css')}}">

</head>

<body data-spy="scroll" data-target="#main-navbar">
    <div class="page-loader"></div>
    <div class="body">
        @include('_header')
        @yield('content')
        @include('_footer')
    </div>







    <a href="#" class="scrolltotop"><i class="fa fa-arrow-up"></i></a>

    <!-- Plugins JS -->
    <script src="{{asset('asset/inc/jquery/jquery-1.11.1.min.js')}}"></script>
    <script src="{{asset('asset/inc/bootstrap/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('asset/inc/owl-carousel/js/owl.carousel.min.js')}}"></script>
    <script src="{{asset('asset/inc/stellar/js/jquery.stellar.min.js')}}"></script>
    <script src="{{asset('asset/inc/animations/js/wow.min.js')}}"></script>
    <script src="{{asset('asset/inc/waypoints.min.js')}}"></script>
    <script src="{{asset('asset/inc/isotope.pkgd.min.js')}}"></script>
    <script src="{{asset('asset/inc/classie.js')}}"></script>
    <script src="{{asset('asset/inc/jquery.easing.min.js')}}"></script>
    <script src="{{asset('asset/inc/jquery.counterup.min.js')}}"></script>
    <script src="{{asset('asset/inc/smoothscroll.js')}}"></script>
    <!-- Theme JS -->
    <script src="{{asset('asset/js/theme.js')}}"></script>

</body>

</html>