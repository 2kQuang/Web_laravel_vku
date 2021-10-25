@extends('show')
@section('content')
<div class="container">
    <div class="content" style="margin-top: 100px;">
        <div class="row ">
            <div class="col-8 bg-light">
                <div class="row">
                    <div class="col-5 p-2">
                        <img src="{{asset('./'.$show->image)}}" class="w-100" alt="">
                    </div>
                    <div class="col-7 text-center p-4">
                        <h2>{{$show['name_product']}}</h2>
                        <h5>Price : <?php echo number_format($show['price']).' VND'?></h5>
                        <p>Phone :{{$map['phone']}}</p>
                        <p> <b>Address :</b> {{$map['address']}}</p>
                        <p>{{$map['area']}}</p>
                        <p><b>Working time :</b><i>{{$map['open']}} <b>-></b> {{$map['close']}}</i></p>
                        <h3 class="mt-3">{{$show['content']}}</h3>
                        <form action="{{route('cart.store')}}" method="POST">
                            @csrf
                            <div class="quantity qua-col">
                                <div class="pro-qty">
                                    <input type="text" size="1" name="quantity" value="1">
                                </div>
                            </div>

                            <input type="hidden" name="name" value="{{$show['name_product']}}" id="">
                            <input type="hidden" name="price" value="{{$show['price']}}" id="">
                            <input type="hidden" name="image" value="{{$show['image']}}" id="">
                            <input type="hidden" name="id_product" value="{{$show['id']}}" id="">
                            <input type="hidden" name="id_categori" value="{{$show['id_categori']}}" id="">
                            <input type="hidden" name="id_address" value="{{$show['id_address']}}" id="">
                            <input type="hidden" name="id_user" value="{{auth()->user()->id}}" id="">
                            <button type="submit" class="btn btn-outline-success">Order</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-4 pl-5 bg-white">
                {!!html_entity_decode($map->maps)!!}
            </div>
        </div>
        <hr>
        <h1 style="color: red;">{{$categories['name']}}</h1>
        <div class="row bg-light">
            @forelse($product as $key)
            <div class="col p-2">
                <a href="{{route('show_product',['id'=>$key['id'],'id_categori'=>$key['id_categori'],'id_address'=>$key['id_address']])}}"
                    style="text-decoration: none;">
                    <img src="{{asset('./'.$key->image)}}" width="300px" height="300px" alt="">
                    <h3>{{$key['name_product']}}</h3>
                    <h5>Price : <?php echo number_format($key['price']).' VND'?></h5>
                </a>
            </div>
            @empty
            @endforelse
        </div>
        <hr>
        <h1 style="color: blue;">All product</h1>
        <div class="row bg-light">
            @forelse($products as $product)
            <div class="col p-2">
                <a href="{{route('show_product',['id'=>$product['id'],'id_categori'=>$product['id_categori'],'id_address'=>$product['id_address']])}}"
                    style="text-decoration: none;">
                    <img src="{{asset('./'.$product->image)}}" width="300px" height="300px" alt="">
                    <h3>{{$product['name_product']}}</h3>
                    <h5>Price : <?php echo number_format($product['price']).' VND'?></h5>
                </a>
            </div>
            @empty
            @endforelse
        </div>
        {{$products->links()}}
    </div>
</div>
@endsection