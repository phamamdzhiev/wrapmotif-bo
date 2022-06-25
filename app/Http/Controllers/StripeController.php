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
        $total = $request->input('total');
        $currency = $request->input('currency');
        $quantity = $request->input('quantity');


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
                            'currency' => strtolower($currency),
                            'unit_amount' => $total * 100,
                            'product_data' => [
                                'name' => 'Total amount'
                            ]
                        ],
                        'quantity' => $quantity
                    ]
                ],
                'metadata' => [
                    'customerId' => $request->customerId,
                    'couponId' => $request->couponId,
                    'customerCurrency' => $request->customerCurrency,
                    'totalAmount' => $request->totalAmount,
                    'customerAmount' => $request->customerAmount,
                    'vat' => $request->vat,
                    'vatType' => $request->vatType,
                    'vatAmount' => $request->vatAmount,
                    'customerVatAmount' => $request->customerVatAmount,
                    'totalDiscount' => $request->totalDiscount,
                    'customerTotalDiscount' => $request->customerTotalDiscount,
                    'grandTotal' => ($request->totalAmount + $request->vatAmount) - $request->totalDiscount,
                    'customerGrandTotal' => ($request->customerAmount + $request->customerVatAmount) - $request->customerTotalDiscount,
                    'note' => $request->note
                ]
            ]);

            return response()->json($checkout);
        } catch (\Exception $e) {
            throw new \Exception($e->getMessage());
        }
    }
}
