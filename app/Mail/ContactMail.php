<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ContactMail extends Mailable implements ShouldQueue
{
    use Queueable, SerializesModels;

    private $contact;

    /**
     * Instance contact message
     *
     * @param $contact
     */
    public function __construct($contact)
    {
        $this->contact = $contact;
    }

    /**
     * Build contact message
     *
     * @return ContactMail
     */
    public function build()
    {
        return $this->markdown('mails.contact')->subject('Received message notification')->with('contact', $this->contact);
    }
}
