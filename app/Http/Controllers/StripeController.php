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
        dd($request->all());
        try {
            $stripe = new StripeClient(env('STRIPE_SECRET'));

            return $stripe->checkout->sessions->create([
                'mode' => 'payment',
                'success_url' => 'https://wrapmotif.com/cart',
                'cancel_url' => 'https://wrapmotif.com/cart',
                'line_items' => [
                    [
                        'price_data' => [
                            'currency' => 'eur',
                            'unit_amount' => 500,
                        ],
                    ]
                ]
            ]);
        } catch (\Exception $e) {
            throw new \Exception($e->getMessage());
        }
    }
}
