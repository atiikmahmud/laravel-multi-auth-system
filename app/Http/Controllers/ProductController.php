<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function addProduct()
    {
        $products = [
            ["name"=>"Phone"],
            ["name"=>"Tablet"],
            ["name"=>"Laptop"],
            ["name"=>"Watch"],
            ["name"=>"Television"],
            ["name"=>"Radio"],
            ["name"=>"Camera"],
            ["name"=>"Fridge"],
            ["name"=>"Earbuds"],
            ["name"=>"Calculator"],
        ];
        Product::insert($products);
        return "Product has been inserted successfully!";
    }

    public function search()
    {
        return view('search.search');
    }

    public function autoComplete(Request $request)
    {
        $data = Product::select("name")
                            ->where("name","LIKE", "%{$request->terms}%")
                            ->get();
        return response()->json($data);
    }
}
