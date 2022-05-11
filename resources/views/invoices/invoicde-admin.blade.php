@extends('layouts.invoice')

@section('content')

    <div class="header">
        <!-- Logo -->
        <div class="logo-center">
            <img src="{{ \App\Facades\Helper::getDarkLogo() }}" style="width:200px">
        </div>
    </div>
    <div class="clearfix"></div>

    <div class="info">
        <div class="company">
            <span>Date of issue:</span>
            <br />
            <span>{{ $order->dateFormatted }} </span>
        </div>
        <div class="customer">
            <span>Order receipt</span>
            <span class="font-bold">{{ $order->id }} </span>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="info">
        <!-- company info -->
        <div class="company w-45">
            <h5 class="font-bold">Sold By</h5>
            <div class="border px-4 py-2">
                <span>{{ \App\Facades\Helper::getAppName() }}</span>
                <span>
                    {{ \App\Facades\Helper::getStreet() }}<br>
                    {{ \App\Facades\Helper::getZipcode() }}
                    {{ \App\Facades\Helper::getCity() }}<br>
                    {{ \App\Facades\Helper::getCountry() }}
                </span>
                <span>{{ $order->customer->euVatNo}}</span>
            </div>
        </div>

        <!-- customer info -->
        <div class="customer w-45">
            <h5 class="font-bold">Customer</h5>
            <div class="border px-4 py-2">
                <span>{{ $order->customer->name }} {{ $order->customer->surname }}</span>
                <br>
                @if($order->customer->companyName)
                    <span>{{ $order->customer->companyName}}</span>
                    <br>
                @endif

                <span><span class="font-bold">VAT No: </span>{{ $order->customer->euVatNo}}</span>
                <br>
                <span>
                    <span class="font-bold">Address: </span>
                    {{ $order->customer->billingAddress['street'] }}<br>
                    {{ $order->customer->billingAddress['zipcode'] }}
                    {{ $order->customer->billingAddress['city'] }} <br>
                    {{ $order->customer->billingAddress['country'] }}
                </span>

            </div>
        </div>
    </div>
    <div class="invoice-content">
        <!-- Items -->
        <h5 class="font-bold mb-2">Items:</h5>
        <table class="w-full divide-y divide-gray-200 border-2">
            <thead class="bg-white ">
            <tr class="">
                <th scope="col" class="px-6 py-5 text-left border-2 text-sm text-black uppercase font-bold">#</th>
                <th scope="col" class="px-6 py-5 text-left border-2 text-sm text-black uppercase font-bold">ID</th>
                <th scope="col" class="px-6 py-5 text-left border-2 text-sm text-black uppercase font-bold">Item Name</th>
                <th scope="col" class="px-6 py-5 text-right border-2 text-sm text-black uppercase font-bold">Quantity</th>
                <th scope="col" class="px-6 py-5 text-right border-2 text-sm text-black uppercase font-bold">Unit price</th>
                <th scope="col" class="px-6 py-5 text-right border-2 text-sm text-black uppercase font-bold">Price</th>

            </tr>

            </thead>
            <tbody class="bg-white divide-y divide-gray-200">
            @foreach($order->orderItems  as $key => $orderItem)
                <tr >
                    <td class="px-6 py-4 border-2 whitespace-nowrap">
                        {{ $key + 1 }}
                    </td>
                    <td class="px-6 py-4 border-2 whitespace-nowrap">{{ $orderItem->productId }}</td>
                    <td class="px-6 py-4 border-2 whitespace-nowrap">{{ $orderItem->product->name }}</td>
                    <td class="px-6 py-4 border-2 whitespace-nowrap text-right">1</td>
                    <td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ $orderItem->customerAmountFormatted }}</td>
                    <td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ $orderItem->customerAmountFormatted }}</td>
                </tr>
            @endforeach

            <tr>
                <th scope="col" colspan="5" class="px-6 py-5 text-right text-sm text-black uppercase font-bold">Amount</th>
                <td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ $order->customerAmountFormatted }}</td>
            </tr>
            <tr>
                <th scope="col" colspan="5" class="px-6 py-5 text-right text-sm text-black uppercase font-bold">VAT ({{ $order->vat }} {{ $order->vatType }})</th>
                <td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ $order->customerVatAmountFormatted }}</td>
            </tr>

            <tr>
                <th scope="col" colspan="5" class="px-6 py-5 text-right text-sm text-black uppercase font-bold">Discount (-)</th>
                <td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ $order->customerTotalDiscountFormatted }}</td>
            </tr>

            <tr>
                <th scope="col" colspan="5" class="px-6 py-5 text-right text-sm text-black uppercase font-bold">TOTAL</th>
                <td class="px-6 py-4 border-2 whitespace-nowrap text-right">{{ $order->customerGrandTotalFormatted }}</td>
            </tr>

            </tbody>
        </table>
    </div>

    <!-- footer -->
    <div class="justify-center footer">
        <div class="">
            <p class="text-xs">
                Email us at info@wrapmotif.com with any questions
            </p>

            <div class="flex justify-center my-3">
                <img class="logo" src="{{ \App\Facades\Helper::getDarkLogo() }}" alt="logo" style="width:200px" />
            </div>
            <p class="text-xs mt-1 text-center">
                www.wrapmotif.com
            </p>
        </div>
    </div>
@endsection
