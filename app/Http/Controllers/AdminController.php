<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\User;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function index()
    {
        return view('admin.home');
    }

    public function insertUser()
    {
        return view('admin.insert');
    }

    public function storeUser(Request $request)
    {
        $validatedData = $request->validate([
            'name'     => 'required',
            'role'     => 'required',
            'email'    => 'required|email',
            'password' => 'required|min:8|max:12'
        ]);        
        
        $user = new User();

        $user->name     = $request->name;
        $user->role     = $request->role;
        $user->email    = $request->email;
        $user->password = Hash::make($request->password);

        $user->save();
        return back()->with('userInsert', 'User inserted successfully !');
    }

    public function showUserList()
    {
        $users = User::all();
        return view('admin.showUser', compact('users'));
    }
}
