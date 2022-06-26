<?php

namespace App\Jobs;

use AWS\CRT\Log;
use Illuminate\Bus\Queueable;
use App\Mail\OrderCompletedMail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Contracts\Queue\ShouldBeUnique;

class OrderCompletedJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $order;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($order)
    {
        $this->order = $order;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $email = new OrderCompletedMail($this->order);
        \Illuminate\Support\Facades\Log::info(json_encode($this->order));
        \Illuminate\Support\Facades\Log::info(json_encode($this->order->customer));
        Mail::to($this->order->customer['email'])->send($email);
    }
}
