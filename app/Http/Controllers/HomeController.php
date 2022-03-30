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

        if($role == '1')
        {
            return view('admin.home');
        }
        elseif($role == '2')
        {
            return view('seller.home');
        }
        else
        {
            return view('user.home'); 
        }
    }
    
}
