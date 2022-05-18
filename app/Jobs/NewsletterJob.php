<?php

namespace App\Jobs;

use App\Mail\NewsletterMail;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class NewsletterJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    private $news_letter;

    public function __construct($news_letter)
    {
        $this->news_letter = $news_letter;
    }

    public function handle()
    {
        $email = new NewsletterMail($this->news_letter);
        Mail::to($this->news_letter)->send($email);
    }
}
