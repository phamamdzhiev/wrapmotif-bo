<?php

namespace App\Jobs;

use App\Mail\CompanyApprovedMail;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class CompanyApprovedJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $company;

    /**
     * Instance company
     */
    public function __construct($company)
    {
        $this->company = $company;
    }

    /**
     * Execute job
     *
     * @return void
     */
    public function handle()
    {
        $email = new CompanyApprovedMail($this->company);

        Mail::to($this->company->company_email)->send($email);
    }
}
