<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class FidelityPointMail extends Mailable
{
    use Queueable, SerializesModels;

    private $user;
    private $points;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($user, $points)
    {
        $this->user = $user;
        $this->points = $points;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from(env('MAIL_FROM_ADDRESS'))
            ->subject('BRICOLYA vous remercie pour votre fidélité !')
            ->view('emails.fidelity_points')
            ->with(['user' => $this->user, 'points' => $this->points]);
    }
}
