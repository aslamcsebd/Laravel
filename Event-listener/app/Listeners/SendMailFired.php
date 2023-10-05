<?php

namespace App\Listeners;

use App\Models\User;
use App\Events\SendMail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendMailFired
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(SendMail $event): void
    {
	    $user = User::find($event->userId)->toArray();
		Mail::send('eventMail', $user, function($message) use ($user){
			$message->to($user['email']);
			$message->subject('Event testing');
		});
    }
}
