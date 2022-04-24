<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\User;

use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function home()
    {
        return view('welcome');
    }
    
    public function index()
    {
        $role = Auth::user()->role;
        $status = Auth::user()->status;

        if($role == '1' && $status == "1")
        {
            return view('admin.home');
        }
        elseif($role == '2' && $status == "1")
        {
            return view('seller.home');
        }
        elseif($role == '0' && $status == "1")
        {
            return view('user.home'); 
        }
        else{
            return view('admin.disable');
        }
    }
    
}
