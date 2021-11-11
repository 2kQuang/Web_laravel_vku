@extends('master')
@section('content')
<section id="portfolio-section" class="page bg-style1">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="portfolio">
                    <!-- Begin page header-->
                    <div class="page-header-wrapper">
                        <div class="container">
                            <div class="page-header text-center wow fadeInDown" data-wow-delay="0.4s">
                                <h2>Order</h2>
                                <div class="devider"></div>
                                <p class="subtitle">What to eat now ?</p>
                            </div>
                        </div>
                    </div>
                   
                    <!-- End page header-->
                    <div class="portfoloi_content_area">
                        <div class="portfolio_menu" id="filters">
                            <ul>
                                <li class="active_prot_menu"><a href="#porfolio_menu" data-filter="*">all</a></li>
                                @forelse($categories as $categorie)
                                <li><a href="#porfolio_menu"
                                        data-filter=".{{$categorie['id']}}">{{$categorie['name']}}</a></li>
                                @empty
                                @endforelse
                            </ul>
                        </div>
                        <div class="portfolio_content">
                            <div class="row" id="portfolio">
                                @forelse($products as $product)
                                <div class="col-xs-12 col-sm-4 {{$product['id_categori']}}">
                                    <div class="portfolio_single_content">
                                        <img src="{{$product['image']}}" width="300px" height="300px" alt="title" />
                                        <div>
                                        @guest
                                        @if (Route::has('login'))
                                            <li class="nav-item">
                                                <a class="nav-link text-light" href="{{ route('login') }}">{{ __('Login') }}</a>
                                            </li>
                                        @endif
                                        @else
                                            <a href="{{route('show_product',['id'=>$product['id'],'id_categori'=>$product['id_categori'],'id_address'=>$product['id_address']])}}">
                                                {{$product['name_product']}}
                                                <p>See more</p>
                                            </a>
                                            @endguest
                                        </div>
                                    </div>
                                </div>
                                @empty
                                @endforelse
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection