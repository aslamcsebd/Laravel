php artisan make:event SendMail

	\app/Events/SendMail.php
	 add $userId

php artisan make:listener SendMailFired --event="SendMail"
	app/Listeners/SendMailFired.php //code
	app\Providers\EventServiceProvider.php //code

php artisan make:controller EventController
	app/Http/Controllers/EventController.php
	
Create blade file [eventMail.blade.php]

https://www.youtube.com/watch?v=PeLgtenBQfc
