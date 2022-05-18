<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class CustomerMail extends Mailable implements ShouldQueue
{
    use Queueable, SerializesModels;

    public $customer;

    /**
     * Create a new message instance
     *
     * @param $customer
     */
    public function __construct($customer)
    {
        $this->customer = $customer;
    }

    /**
     * Build the message
     *
     * @return CustomerMail
     */
    public function build()
    {
        return $this->markdown('mails.customer')->subject('Welcome to ' . \App\Facades\Helper::getAppName())->with('customer', $this->customer);
    }
}
