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
                    <li><a class="page-scroll">&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                    <li><a class="page-scroll">&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                    <li><a class="page-scroll">&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                    <li><a class="page-scroll">&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                    <li><a class="page-scroll">&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                    <li><a class="page-scroll">&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                    <li style="display: flex;">

                        <div class="user mt-2 ml-5">
                            <a href="{{route('profile.show',['id'=>auth()->user()->id])}}"
                                style="text-decoration: none">
                                <img src="{{asset(auth()->user()->avatar)}}">
                            </a>
                        </div>
                        <div class="mt-3 ml-3 page-scroll" style="color: white;">
                            <a href="{{route('profile.show',['id'=>auth()->user()->id])}}"
                                style="text-decoration: none">
                                <h3>{{Auth::user()->name}}</h3>
                            </a>
                        </div>

                        <ul class="list-unstyled mt-2 ml-3">
                            <li class="p-1">
                                <form action="{{ route('logout') }}" method="POST">
                                    @csrf
                                    <button class="btn btn-outline-dark" style="background-color: black !important;" type="submit">Log out</button>
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