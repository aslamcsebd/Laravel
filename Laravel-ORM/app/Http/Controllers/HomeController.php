<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;
use App\Post;
use App\Phone;
use App\Comment;
use App\Category;
use App\Address;
use App\Image;
use App\User_Category;

class HomeController extends Controller {

    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }


   public function index(){

      // // $datas = User::all();
      // $datas = Category::all();

      // foreach ($datas as $data2) { 
      //    echo $data2->categoryName;
      //    foreach ($data2->user as $data3) {
      //       echo $data3->name;        
      //    } 
      // }
      return view('home');
   }
}
