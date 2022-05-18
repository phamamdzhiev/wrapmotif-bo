<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class NewsletterMail extends Mailable implements ShouldQueue
{
    use Queueable, SerializesModels;

    /**
     * Set newsletter
     *
     * @var
     */
    private $news_letter;

    /**
     * Instance new message
     *
     * @param $news_letter
     */
    public function __construct($news_letter)
    {
        $this->news_letter = $news_letter;
    }

    /**
     * Build a newsletter message
     *
     * @return NewsletterMail
     */
    public function build()
    {
        return $this->markdown('mails.newsletter')->subject('You are part of the family now')->with('news_letter', $this->news_letter);
    }
}
