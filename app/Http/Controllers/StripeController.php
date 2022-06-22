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
    public function getSession(): Session
    {
        try {
            $stripe = new StripeClient(env('STRIPE_SECRET'));

            return $stripe->checkout->sessions->create([
                'mode' => 'payment',
                'success_url' => 'https://wrapmotif.com',
                'cancel_url' => 'https://wrapmotif.com',
                'line_items' => [
                    [
                        'price_data' => [
                            'currency' => 'usd',
                            'unit_amount' => 500,
                            'product_data' => [
                                'name' => 'Testov produkt'
                            ]
                        ],
                        'quantity' => 1
                    ]
                ]
            ]);
        } catch (\Exception $e) {
            throw new \Exception($e->getMessage());
        }
    }
}
