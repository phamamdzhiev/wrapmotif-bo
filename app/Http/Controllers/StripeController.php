<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Stripe\Checkout\Session;
use Stripe\StripeClient;

class StripeController extends Controller
{
    /**
     * @throws \Exception
     */
    public function getSession(Request $request): \Illuminate\Http\JsonResponse
    {
        $total = $request->input('total');
        $currency = $request->input('currency');

        dump($currency);
        dump($total);

        try {
            $stripe = new StripeClient(env('STRIPE_SECRET'));

            $checkout = $stripe->checkout->sessions->create([
                'mode' => 'payment',
                'success_url' => 'https://wrapmotif.com/cart',
                'cancel_url' => 'https://wrapmotif.com/cart',
                'line_items' => [
                    [
                        'price_data' => [
                            'currency' => strtolower($currency),
                            'unit_amount' => $total * 1000,
                        ],
                    ]
                ]
            ]);

            return response()->json($checkout);
        } catch (\Exception $e) {
            throw new \Exception($e->getMessage());
        }
    }
}
