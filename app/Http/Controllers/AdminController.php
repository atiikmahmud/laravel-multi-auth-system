<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\User;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    protected $roles = ['User','Admin','Seller'];

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

    public function statusUpdate($id)
    {
        $user = User::find($id);
        //dd($user);
        $user->status = ($user->status == 1) ? 0 : 1;
        $user->save();
        return back()->with('statusUpdate', 'User status updated !');
    }
    
    public function edit($id)
    {
        $user = User::find($id);
        $roles = $this->roles;
        return view('admin.edituser', compact('user','roles'));
    }

    public function update(Request $request)
    {   
        $validatedData = $request->validate([
            'name'     => 'required',
            'role'     => 'required',
            'email'    => 'required|email',
            'password' => 'required|min:8|max:12'
        ]);  

        $name     = $request->name;
        $role     = $request->role;
        $email    = $request->email;
        $password = Hash::make($request->password);
        
        $user     = User::find($request->id);

        $user->name     = $name;
        $user->role     = $role;
        $user->email    = $email;
        $user->password = $password;        
        $user->save();
        return back()->with('userUpdate', 'User profile update successfully !');
    }

    public function delete($id)
    {
        $user = User::find($id);
        $user->delete();
        return back()->with('userDeleted', 'User deleted successfully !');
    }

}
