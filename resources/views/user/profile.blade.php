@extends('show')
@section('content')
<div class="container">
    <div class="content bg-light" style="margin-top: 100px;">
        <div class="mt-5 mb-3">
            <div class="m-5 p-4">
                <h4>Profile</h4>
                <hr>
            </div>
            <div class="main-body">
                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <img src="{{asset(''.$user->avatar)}}" alt="Admin" class="rounded-circle"
                                        width="150">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 mt-5">
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Full Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{$user['name']}}
                                    </div>
                                </div>
                                <hr style="width: 90%;">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{$user['email']}}&emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
                                        @if(Route::has('password.request'))
                                        <a href="{{ route('password.request') }}">
                                            Forgot Your Password ?
                                        </a>
                                        @endif
                                    </div>
                                </div>
                                <hr style="width: 90%;">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{$user['phone']}}
                                    </div>
                                </div>
                                <hr style="width: 90%;">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{$user['address']}}
                                    </div>
                                </div>
                                <hr style="width: 90%;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="m-3">
                <h4>Order</h4>
                <hr>
            </div>
            <div class="p-4">
                <table class="table table-bordered" style="text-align: center;">
                    <thead>
                        <tr class="bg-dark" style="color: white; text-align: center;">
                            <th scope="col" style="text-align: center;">Image</th>
                            <th scope="col" style="text-align: center;">Name</th>
                            <th scope="col" style="text-align: center;">Price</th>
                            <th scope="col" style="text-align: center;">Quantily</th>
                            <th scope="col" style="text-align: center;">Total money</th>
                            <th scope="col" style="text-align: center; width: 25%;">Setting</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($carts as $cart)
                        <tr>
                            <td><img src="{{asset(''.$cart['image'])}}" height="30px" width="30px"></td>
                            <td>{{$cart['name']}}</td>
                            <td><?php echo number_format($cart['price']).' VND'?></td>
                            <td>{{$cart['quantity']}}</td>
                            <td><?php echo number_format($cart['price'] * $cart['quantity']).' VND'?></td>
                            <td>
                                <a href="{{route('show_product',['id'=>$cart['id_product'],'id_categori'=>$cart['id_categori'],'id_address'=>$cart['id_address']])}}" class="btn btn-outline-success">Order more</a>
                                <a href="" class="btn btn-outline-success">Order</a>
                                <a href="{{route('cart.delete',['id'=>$cart['id']])}}" class="btn btn-outline-danger">Delete</a>
                            </td>
                        </tr>
                        @empty
                        <tr>
                            <td colspan="6">
                               <b>Chưa có sản phầm nào</b>
                            </td>
                        </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

@endsection