<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function userAddPage()
    {
        return view('Backend.AdminControll.addadmin');
    }
    public function addUser(Request $req)
    {
        $req->validate([
            'name' => 'required | max:100 | min:2',
            'email' => 'required | unique:users',
            'password' => 'required | min:8'
        ]);
        $admin_user = new User();

        $admin_user->name = $req->name;
        $admin_user->email = $req->email;
        $hashed = Hash::make($req->password);
        $admin_user->password = $hashed;

        $admin_user->save();
        return redirect()->back()->with('msg', "New admin user has been created successfully!");
    }
    public function manageUserPage()
    {
        $users = User::all();
        return view('Backend.AdminControll.manageadmin', ['users' => $users]);
    }
    public function deleteUser($user_id)
    {
        $user = User::find($user_id);
        $user->delete();

        return redirect()->back()->with('msg', "The admin has been deleted successfully!");
    }
    public function editUserPage($user_id)
    {
        $user = User::find($user_id);
        return view('Backend.AdminControll.updateadmin', ['user' => $user]);
    }
    public function editUser(Request $req, $user_id)
    {
        $req->validate([
            'name' => 'required | max:100 | min:2',
            'email' => 'required',
            'password' => 'min:8 | nullable'
        ]);

        $admin_user = User::find($user_id);
        $admin_user->name = $req->name;
        $admin_user->email = $req->email;

        $password = $req->password;
        if($password){
            $hashed = Hash::make($req->password);
            $admin_user->password = $hashed;
        }
        $admin_user->save();
        return redirect()->route('user.manage')->with('msg', "Admin has been successfully updated!");
    }
}
