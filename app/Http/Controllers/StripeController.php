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
    public function getSession(Request $request): Session
    {
        $total = $request->input('total');
        $currency = $request->input('currency');

        try {
            $stripe = new StripeClient(env('STRIPE_SECRET'));

            return $stripe->checkout->sessions->create([
                'mode' => 'payment',
                'success_url' => 'https://wrapmotif.com/cart',
                'cancel_url' => 'https://wrapmotif.com/cart',
                'line_items' => [
                    [
                        'price_data' => [
                            'currency' => $currency,
                            'unit_amount' => $total * 1000,
                        ],
                    ]
                ]
            ]);
        } catch (\Exception $e) {
            throw new \Exception($e->getMessage());
        }
    }
}
