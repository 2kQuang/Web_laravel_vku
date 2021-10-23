@extends('show')
@section('content')
<div class="container">
    <div class="content bg-light" style="margin-top: 100px;">
        <div class="container mt-5 mb-3">
            <div class="m-3">
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
        </div>
    </div>
</div>
@endsection