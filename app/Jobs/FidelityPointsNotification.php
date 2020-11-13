<?php

namespace App\Jobs;

use App\Mail\FidelityPointMail;
use App\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class FidelityPointsNotification implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $customers = User::where('user_type', 'customer')->get();
        $customers->each(function ($customer) {
            $email = $customer->email;
            $points = $customer->fidelityPoints();
            $this->sendEmail($email, $points);
        });
    }

    public function sendEmail($email, $points)
    {
        // Mail::raw("Points Accumulated : $points", function ($message) use ($email) {
        //     $message->to($email);
        // });
        $user = User::where('email', $email)->first();
        Mail::to($user->email)->send(new FidelityPointMail($user, $points));
    }
}
