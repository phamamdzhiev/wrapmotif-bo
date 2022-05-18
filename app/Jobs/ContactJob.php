<?php

namespace App\Jobs;

use App\Mail\ContactMail;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class ContactJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    private $contact;

    /**
     * Instance job
     *
     * @param $contact
     */
    public function __construct($contact)
    {
        $this->contact = $contact;
    }

    /**
     * Execute job
     *
     * @return void
     */
    public function handle()
    {
        $email = new ContactMail($this->contact);
        Mail::to($this->contact->email)->send($email);
    }
}
