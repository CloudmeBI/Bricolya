<?php

namespace App\Http\Controllers;

use App\Mail\EmailManager;
use App\Subscriber;
use App\User;
use Illuminate\Http\Request;
use Mail;

class NewsletterController extends Controller
{
    public function index(Request $request)
    {
        $users = User::all();
        $subscribers = Subscriber::all();
        return view('newsletters.index', compact('users', 'subscribers'));
    }

    public function send(Request $request)
    {
        if (env('MAIL_FROM_ADDRESS') != null) {
            //sends newsletter to selected users
            if ($request->has('user_emails')) {
                foreach ($request->user_emails as $key => $email) {
                    $array['view'] = 'emails.newsletter';
                    $array['subject'] = $request->subject;
                    $array['from'] = env('MAIL_FROM_ADDRESS');
                    $array['content'] = $request->content;

                    try {
                        Mail::to($email)->queue(new EmailManager($array));
                    } catch (\Exception $e) {
                        dd($e);
                    }
                }
            }

            //sends newsletter to subscribers
            if ($request->has('subscriber_emails')) {
                foreach ($request->subscriber_emails as $key => $email) {
                    $array['view'] = 'emails.newsletter';
                    $array['subject'] = $request->subject;
                    $array['from'] = env('MAIL_FROM_ADDRESS');
                    $array['content'] = $request->content;

                    try {
                        Mail::to($email)->queue(new EmailManager($array));
                    } catch (\Exception $e) {
                        dd($e);
                    }
                }
            }
        } else {
            flash(__('Please configure SMTP first'))->error();
            return back();
        }

        flash(__('Newsletter has been send'))->success();
        return redirect()->route('admin.dashboard');
    }
}
