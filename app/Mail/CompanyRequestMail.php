<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class CompanyRequestMail extends Mailable implements ShouldQueue
{
    use Queueable, SerializesModels;

    public $company;

    /**
     * Instance new message
     *
     * @param $company
     */
    public function __construct($company)
    {
        $this->company = $company;
    }

    /**
     * Build the message
     *
     * @return CompanyRequestMail
     */
    public function build()
    {
        return $this->markdown('mails.company-request')
            ->subject('Partnership request received')
            ->with('company', $this->company);
    }
}
