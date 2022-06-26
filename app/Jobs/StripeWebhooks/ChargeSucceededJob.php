<?php

namespace App\Jobs\StripeWebhooks;

use App\Models\Order;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Spatie\WebhookClient\Models\WebhookCall;

class ChargeSucceededJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /** @var WebhookCall */
    public $webhookCall;

    public function __construct(WebhookCall $webhookCall)
    {
        $this->webhookCall = $webhookCall;
    }

    /**
     * @throws \Exception
     */
    public function handle()
    {
        $charge = $this->webhookCall->payload['data']['object'];

        $orderID = $charge['metadata']['order_id'];

        try {
            /** @var Order $order */
            $order = Order::find($orderID);
            $order->update(['status' => 1]);
        } catch (\Exception $e) {
            throw new \Exception($e->getMessage());
        }
    }
}
