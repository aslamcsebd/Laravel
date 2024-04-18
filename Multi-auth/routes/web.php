<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [HomeController::class, 'home'])->name('home');

// Normal user route listo
Route::middleware(['auth', 'user-access:user'])->group(function() {
	Route::get('/user/home', [HomeController::class, 'userHome'])->name('user.home');
});

// Admin route list
Route::middleware(['auth', 'user-access:admin'])->group(function() {
	Route::get('/admin/home', [HomeController::class, 'adminHome'])->name('admin.home');
});

// Manager route list
Route::middleware(['auth', 'user-access:manager'])->group(function() {
	Route::get('/manager/home', [HomeController::class, 'managerHome'])->name('manager.home');
});

Route::fallback(function () {
	// return abort(404);
	return view(404);
});
