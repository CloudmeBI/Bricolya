<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class RecruitmentMail extends Mailable
{
    use Queueable, SerializesModels;
    public $data;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $file = pathinfo(public_path($this->data['filepath']));
        /*,[
                            'as' => $file['filename'],
                            'mime' => $file['extension'],
                    ]*/
        return $this->from($this->data['email'])->subject($this->data['subject'])
            ->attach(public_path($this->data['filepath']))
            ->view('emails.recruitment')
            ->with('data', $this->data);
    }
}
