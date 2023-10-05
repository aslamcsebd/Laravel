##  Install
1.      composer create-project laravel/laravel:^8.0 auth 
2.      composer require laravel/ui 
3.      php artisan ui bootstrap
4.      php artisan ui bootstrap --auth
5.      bootstrap & js link added [layouts/app]


##  Setup
1.      users table add this field after password field

    ```
    $table->boolean('type')->default(false)->comment('0=>User, 1=>Admin, 2=>Manager');
    ```
    
2.      Models/User.php
	
    ```
    protected function type():Attribute{
		return new Attribute(
			get: fn ($value) => ["user", "admin", "manager"][$value],
		);
	}
	```

3.      php artisan make:middleware UserAccess
4.      Some code middleware/UserAccess.php
5.      middlewire added kernel.php in protected $routeMiddleware = []
6.      HomeController three(3) function make for three(3) route [index, adminHome, managerHome]
7.      Three(3) blade file create [home, adminHome, managerHome]
8.      Large code Auth/LoginController.php
9.      web.php for route code


### Source
Code source [Blog link](https://tutorial101.blogspot.com/2023/03/laravel-multi-user-authentication.html)

Code source [Video link](https://www.youtube.com/watch?v=RbDt4Q-Bb8I)

--- The end---
