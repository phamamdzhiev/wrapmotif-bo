<?php

namespace App\Http\Controllers\Api;

use Carbon\Carbon;
use App\Models\Order;
use App\Facades\Response;
use App\Models\OrderItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\OrderRequest;
use App\Http\Resources\ApiResource;
use App\Http\Controllers\Controller;


class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        return ApiResource::collection(Order::customerFilter()->with('orderItems')->filter($request->all())->orderBy('id', 'desc')->paginate(10));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(OrderRequest $request)
    {
        $order = DB::transaction(function () use ($request) {

           $order = Order::createOrder($request);

            foreach ($request->orderItems as $item) {
                $order->orderItems()->create(
                    [
                        'productId'        => $item['productId'],
                        'amount'           => $item['amount'],
                        'customerAmount'   => $item['customerAmount'],
                        'colorChangeId'    => $item['colorChangeId'] ?? null,
                    ]
                );
            }

            return $order;
        });

        return new ApiResource($order);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Order $order)
    {
        if (auth()->user()->id == $order->customerId) {
            return new ApiResource($order);
        } else {
            Response::error('Unauthorized', 401);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function orderItems(Request $request)
    {
        return ApiResource::collection(OrderItem::whereHas('order', function ($order) {
            return $order->where('customer_id', auth()->user()->id);
        })->filter($request->all())->orderBy('id', 'desc')->paginate(10));
    }

    public function getOrder($id): \Illuminate\Http\JsonResponse
    {
        /** @var Order $order */
        $order = Order::find($id);

        $order->update(['status' => 2]);
        return \response()->json($order->only('status'));
    }

    /**
     * Get invoice of the order
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function invoice(Order $order)
    {
        // return view('invoices.order')->with('order', $order);
        $pdf = \PDF::loadView('invoices.order', ['order' => $order]);
        return $pdf->stream('invoice.pdf');
    }
}
