<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class CompanyApprovedMail extends Mailable implements ShouldQueue
{
    use Queueable, SerializesModels;

    public $company;

    /**
     * Instance message
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
     * @return CompanyApprovedMail
     */
    public function build()
    {
        return $this->markdown('mails.company-approved')
            ->subject('Partnership approved')
            ->with('company', $this->company);
    }
}
