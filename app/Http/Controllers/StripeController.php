<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\PreviewDesign;
use AWS\CRT\Log;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Stripe\Checkout\Session;
use Stripe\StripeClient;

class StripeController extends Controller
{
    /**
     * @throws \Exception
     */
    public function designPayment(Request $request): JsonResponse
    {
        $total = $request->input('total');
        $currency = $request->input('currency');
        $quantity = $request->input('quantity');

        try {
            $stripe = new StripeClient(env('STRIPE_SECRET'));

            $order = Order::createOrder($request);

            $orderItems = json_decode($request->orderItems, true);

            foreach ($orderItems as $item) {
                $order->orderItems()->create(
                    [
                        'productId' => $item['productId'],
                        'amount' => $item['amount'],
                        'customerAmount' => $item['customerAmount'],
                        'colorChangeId' => $item['colorChangeId'] ?? null,
                    ]
                );
            }

            $checkout = $stripe->checkout->sessions->create([
                'customer_email' => Auth::guard('customers')->user()->email,
                'mode' => 'payment',
                'success_url' => env('FRONTEND_URL') . '/download/' . $order->id,
                'cancel_url' => env('FRONTEND_URL') . '/cart',
                'line_items' => [
                    [
                        'price_data' => [
                            'currency' => strtolower($currency),
                            'unit_amount' => $total * 100,
                            'product_data' => [
                                'name' => 'Total amount'
                            ]
                        ],
                        'quantity' => $quantity
                    ]
                ],
                'payment_intent_data' => [
                    'metadata' => [
                        'cart' => 'design',
                        'order_id' => (int)$order->id
                    ]
                ],
            ]);

            return response()->json($checkout);
        } catch (\Exception $e) {
            throw new \Exception($e->getMessage());
        }
    }

    public function colorPayment(Request $request)
    {
    }

    public function previewPayment(Request $request): JsonResponse
    {
        $previewOrder = PreviewDesign::createPreviewOrder($request);

        $total = $request->input('total');
        $currency = $request->input('customerCurrency');

        $stripe = new StripeClient(env('STRIPE_SECRET'));

        $checkout = $stripe->checkout->sessions->create([
            'customer_email' => Auth::guard('customers')->user()->email,
            'mode' => 'payment',
            'success_url' => env('FRONTEND_URL') . '/cart',
            'cancel_url' => env('FRONTEND_URL') . '/cart',
            'line_items' => [
                [
                    'price_data' => [
                        'currency' => strtolower($currency),
                        'unit_amount' => $total * 100,
                        'product_data' => [
                            'name' => 'Total amount'
                        ]
                    ],
                    'quantity' => 1
                ]
            ],
            'payment_intent_data' => [
                'metadata' => [
                    'cart' => 'preview',
                    'order_id' => (int)$previewOrder->id
                ]
            ],
        ]);

        return response()->json($checkout);
    }

    public function customPayment(Request $request)
    {
    }
}
