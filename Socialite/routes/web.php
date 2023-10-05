<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('login/{provider}', 'App\Http\Controllers\Auth\LoginController@redirectToProvider');
Route::get('{provider}/callback', 'App\Http\Controllers\Auth\LoginController@handleProviderCallback');

Route::get('/clear', function () {
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('config:cache');
    Artisan::call('view:clear');
 
    return "<h1> Cleared!</h1>";
});

/*
Blade.php
    <div class="sin-in-with">
    @if(get_static_option('enable_google_login'))
        <a href="{{ route('login.google.redirect') }}" class="sign-in-btn">
            <img src="{{ asset('assets/frontend/img/icon/google-icon.svg') }}" alt="icon">
            {{ __('Sign in with Google') }}
        </a>
        @endif
        @if(get_static_option('enable_facebook_login'))
        <a href="{{ route('login.facebook.redirect') }}" class="sign-in-btn">
        <img src="{{ asset('assets/frontend/img/icon/Facebook-icon.svg') }}" alt="icon">
            {{ __('Sign in with Facebook') }}
        </a>
        @endif
    </div>

web.php
    Route::group(['prefix' => 'facebook'], function () {
        Route::get('callback', 'SocialLoginController@facebook_callback')->name('facebook.callback');
        Route::get('redirect', 'SocialLoginController@facebook_redirect')->name('login.facebook.redirect');
    });
    Route::group(['prefix' => 'google'], function () {
        Route::get('callback', 'SocialLoginController@google_callback')->name('google.callback');
        Route::get('redirect', 'SocialLoginController@google_redirect')->name('login.google.redirect');
    });

    controller.php
    public function facebook_redirect()
    {
        return Socialite::driver('facebook')->redirect();
    }

    public function facebook_callback()
    {
        try {
            $user_fb_details = Socialite::driver('facebook')->user();
            $user_details = User::where('email', $user_fb_details->getEmail())->first();
            
            if ($user_details) {
                Auth::login($user_details);
                return redirect()->intended('user-home/#');
            } else {
                $new_user = User::create([
                    'username' => 'fb_' . explode('@', $user_fb_details->getEmail())[0],
                    'name' => $user_fb_details->getName(),
                    'email' => $user_fb_details->getEmail(),
                    'facebook_id' => $user_fb_details->getId(),
                    'password' => Hash::make(\Illuminate\Support\Str::random(8))
                ]);
                
                Auth::login($new_user);
                return redirect()->intended('user-home/#');
            }
        } catch (\Exception $e) {
            return redirect()->intended('login/#')->with(['msg' => $e->getMessage(), 'type' => 'danger']);
        }
    }
    
*/