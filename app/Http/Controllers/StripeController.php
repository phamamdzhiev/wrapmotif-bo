<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Stripe\Checkout\Session;
use Stripe\StripeClient;

class StripeController extends Controller
{
    /**
     * @throws \Exception
     */
    public function index(Request $request): \Illuminate\Http\JsonResponse
    {
        $total = $request->input('c');
//        $currency = $request->input('c');
        $quantity = $request->input('q');


        try {
            $stripe = new StripeClient(env('STRIPE_SECRET'));

            $checkout = $stripe->checkout->sessions->create([
                'customer_email' => Auth::guard('customers')->user()->email,
                'mode' => 'payment',
                'success_url' => env('FRONTEND_URL') . '/cart',
                'cancel_url' => env('FRONTEND_URL') . '/cart',
                'line_items' => [
                    [
                        'price_data' => [
                            'currency' => 'eur',
                            'unit_amount' => $total * 100,
                            'product_data' => [
                                'name' => 'Total amount'
                            ]
                        ],
                        'quantity' => $quantity
                    ]
                ],
                'metadata' => [
                    'test' => 'this is test metadata',
                    'coupon' => 'Coupon ID: 28541AB'
                ]
            ]);

            return response()->json($checkout);
        } catch (\Exception $e) {
            throw new \Exception($e->getMessage());
        }
    }
}
