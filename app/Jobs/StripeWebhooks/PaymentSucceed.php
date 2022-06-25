<?php

namespace App\Jobs\StripeWebhooks;

use App\Models\Order;
use App\Models\Payment;
use Carbon\Carbon;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Spatie\WebhookClient\Models\WebhookCall;

class
PaymentSucceed implements ShouldQueue
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
        $customerID = Auth::guard('customers')->id();

        if ($customerID) {
            Payment::create([
                'user_id' => $customerID,
                'stripe_id' => $charge['id'],
                'subtotal' => $charge['amount'],
                'total' => $charge['amount'],
            ]);
        }

        if ($charge['metadata']['cart'] === 'design_cart') {
            /** @var Order $order */
            $order = Order::create([
                'date' => Carbon::now(),
                'customerId' => $charge['customerId'],
                'couponId' => $charge['couponId'],
                'customerCurrency' => $charge['customerCurrency'],
                'totalAmount' => $charge['totalAmount'],
                'customerAmount' => $charge['customerAmount'],
                'vat' => $charge['vat'],
                'vatType' => $charge['vatType'],
                'vatAmount' => $charge['vatAmount'],
                'customerVatAmount' => $charge['customerVatAmount'],
                'totalDiscount' => $charge['totalDiscount'],
                'customerTotalDiscount' => $charge['customerTotalDiscount'],
                'grandTotal' => ($charge['totalAmount'] + $charge['vatAmount']) - $charge['totalDiscount'],
                'customerGrandTotal' => ($charge['customerAmount'] + $charge['customerVatAmount']) - $charge['customerTotalDiscount'],
                'note' => $charge['note'],
            ]);

            $itemsInCart = json_decode($charge['orderItems'], true);

            foreach ($itemsInCart as $item) {
                $order->orderItems()->create(
                    [
                        'productId' => $item['productId'],
                        'amount' => $item['amount'],
                        'customerAmount' => $item['customerAmount'],
                        'colorChangeId' => $item['colorChangeId'] ?? null,
                    ]
                );
            }

            return $order;

        } else if ($charge['metadata']['cart'] === 'color_change_order') {
            /** @var Order $order */
            $order = Order::create([

            ]);
        } else if ($charge['metadata']['cart'] === 'preview_design_order') {
            /** @var Order $order */
            $order = Order::create([

            ]);
        } else if ($charge['metadata']['cart'] === 'custom_order_cart') {
            /** @var Order $order */
            $order = Order::create([

            ]);
        }


        return $charge;

    }
}
