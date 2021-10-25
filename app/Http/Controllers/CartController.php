<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $product = $request->input('id_product');
        $user = $request->input('id_user');
        $data = Cart::where('id_product','=',$product)->where('id_user','=',$user)->first();
        $check = Cart::where('id_product','=',$product)->where('id_user','=',$user)->count();
        if ($check > 0) {
            Cart::where('id_product','=',$product)->where('id_user','=',$user)->update([
                'quantity' => (int)$data['quantity'] + $request->input('quantity'),

                'name' => $request->input('name'),
                'price' => $request->input('price'),
                'image' => $request->input('image'),
                'id_categori'=>$request->input('id_categori'),
                'id_product' => $request->input('id_product'),
                'id_address' => $request->input('id_address'),
                'id_user' => $request->input('id_user'),

            ]);
            session()->flash('msg', 'The new category was created successfully!!');
        return redirect()->route('profile.show',['id'=>auth()->user()->id]);
        }else{
             
        $cart = new Cart();
        $cart->name = $request->input('name');
        $cart->price = $request->input('price');
        $cart->image = $request->input('image');

        $cart->quantity = $request->input('quantity');
        $cart->id_categori = $request->input('id_categori');
        $cart->id_product = $request->input('id_product');
        $cart->id_address = $request->input('id_address');
        $cart->id_user = $request->input('id_user');
        $cart->save();
        session()->flash('msg', 'The new category was created successfully!!');
        return redirect()->route('profile.show',['id'=>auth()->user()->id]);
        }
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Cart::where('id',$id)->delete();
        return redirect()->back();
    }
}