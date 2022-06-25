<?php

namespace App\Jobs\StripeWebhooks;

use App\Models\Payment;
use http\Client\Curl\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Auth;
use Spatie\WebhookClient\Models\WebhookCall;

class ChargeSucceedJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /** @var WebhookCall */
    public $webhookCall;

    public function __construct(WebhookCall $webhookCall)
    {
        $this->webhookCall = $webhookCall;
    }

    public function handle()
    {
        $charge = $this->webhookCall->payload['data']['object'];
        dd($charge);

        $customerID = Auth::guard('customers')->id();

        if ($customerID) {
            Payment::create([
                'user_id' => $customerID,
                'stripe_id' => $charge['id'],
                'subtotal' => $charge['amount'],
                'total' => $charge['amount'],
            ]);
        }
    }
}
