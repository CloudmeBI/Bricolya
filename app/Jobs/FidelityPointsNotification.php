<?php

namespace App\Jobs;

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
        Mail::raw("Points Accumulated : $points}", function ($message) use ($email) {
            $message->to($email);
        });
        // id  referred_by  provider_id  user_type  name  email  email_verified_at  password  remember_token  avatar  avatar_original  address  country  city  postal_code  phone  balance  website  category_Specialty  catalogue  products_sold  activity_descrition  referral_code  customer_package_id  remaining_uploads  created_at  updated_at
    }
}
