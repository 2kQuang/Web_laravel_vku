<header id="header" class="header-main">

    <!-- Begin Navbar -->
    <nav id="main-navbar" class="navbar navbar-default navbar-fixed-top" role="navigation">
        <!-- Classes: navbar-default, navbar-inverse, navbar-fixed-top, navbar-fixed-bottom, navbar-transparent. Note: If you use non-transparent navbar, set "height: 98px;" to #header -->

        <div class="container">

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="{{route('home')}}"><img src="{{asset('images/logo/logo_1.png')}}" width="68px" alt=""></a>

            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a class="page-scroll" href="body">Home</a></li>
                    <li><a class="page-scroll" href="#about-section">About</a></li>
                    <li><a class="page-scroll" href="#testimonial-section">Reviews</a></li>
                    <li><a class="page-scroll" href="#portfolio-section">Works</a></li>
                    <li><a class="page-scroll" href="#partners-section">Partners</a></li>
                    <li><a class="page-scroll" href="#contact-section">Contact</a></li>
                    <li style="display: flex;">
                        <div class="user mt-1 ml-5">
                            <img src="{{asset(auth()->user()->avatar)}}">
                        </div>
                        <div class="mt-3 ml-3 page-scroll" style="color: white;">
                            <h3>{{Auth::user()->name}}</h3>
                        </div>
                        <ul class="list-unstyled mt-2 ml-3">
                            <li>
                                <form action="{{ route('logout') }}" method="POST">
                                    @csrf
                                    <button class="btn btn-outline-dark" type="submit">Log out</button>
                                </form>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>

            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- End Navbar -->

</header>