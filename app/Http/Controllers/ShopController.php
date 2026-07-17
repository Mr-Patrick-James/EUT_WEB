<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ShopController extends Controller
{
    public function index()
    {
        return view('shop.index');
    }

    public function product($id)
    {
        $item = \App\Models\MenuItem::with('category')->active()->find((int) $id);

        if (!$item) {
            abort(404);
        }

        // Convert to array so product.blade.php can use $item['key'] syntax
        $item = $item->toArray();

        return view('shop.product', compact('item'));
    }

    public function cart()
    {
        return view('shop.cart');
    }

    public function checkout()
    {
        return view('shop.checkout');
    }

    public function tracking()
    {
        return view('shop.tracking');
    }

    public function profile()
    {
        return view('shop.profile');
    }
}
