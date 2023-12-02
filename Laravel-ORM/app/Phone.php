<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Phone extends Model{

	// One to One [Inverse]
	   public function user(){
	      return $this->belongsTo(User::class);
	   }
}
