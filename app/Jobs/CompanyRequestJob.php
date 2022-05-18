<?php

namespace App\Jobs;

use App\Mail\CompanyRequestMail;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class CompanyRequestJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $company;

    /**
     * Create a new job instance
     */
    public function __construct($company)
    {
        $this->company = $company;
    }

    /**
     * Execute the job
     *
     * @return void
     */
    public function handle()
    {
        $email = new CompanyRequestMail($this->company);
        Mail::to($this->company->company_email)->send($email);
    }
}
