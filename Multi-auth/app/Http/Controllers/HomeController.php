<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function home(Request $request){
		if(auth()->user() && $type = auth()->user()->type) {
			if($type == 'user'){
				return redirect()->route('user.home');
			}
			else if($type == 'admin'){
				return redirect()->route('admin.home');
			}
			else if($type == 'manager'){
				return redirect()->route('manager.home');
			}

            // if(auth()->user()->type == 'user'){
			// 	return redirect()->route('user.home');
			// }
			// else if(auth()->user()->type == 'admin'){
			// 	return redirect()->route('admin.home');
			// }
			// else if(auth()->user()->type == 'manager'){
			// 	return redirect()->route('manager.home');
			// }
		}
		else{
			return redirect()->route('login')->with('error', 'Email-address and password are wrong.');
		}
    }

    public function userHome()
    {
        return view('userHome');
    }

	public function adminHome()
    {
        return view('adminHome');
    }

	public function managerHome()
    {
        return view('managerHome');
    }
}
