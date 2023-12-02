<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


   // One to One
      public function getAddress(){
         return $this->hasOne(Address::class);
      }

      public function getPhone(){
         return $this->hasOne(Phone::class);
      }
    
   // Many to many
      public function category(){
         // return $this->belongsToMany(Category::class, Post::class);
         return $this->belongsToMany('App\Category', 'App\Post');
         // return $this->belongsToMany('App\Category', 'App\Post', 'user_id', 'category_id');
      }


}
