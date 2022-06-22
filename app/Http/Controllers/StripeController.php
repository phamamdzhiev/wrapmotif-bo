<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Stripe\Checkout\Session;
use Stripe\StripeClient;

class StripeController extends Controller
{
    public function getSession(): Session
    {
        $stripe = new StripeClient(env('STRIPE_SECRET'));

        $checkout = $stripe->checkout->sessions->create([
            'mode' => 'payment',
            'success_url' => '/',
            'cancel_url' => '/',
            'line-items' => [
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

        return $checkout;
    }
}
