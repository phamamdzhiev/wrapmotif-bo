@extends('layouts.invoice')

@section('content')
    @php
        $countries = [
                "Austria", "Belgium", "Bulgaria", "Croatia", "Republic of Cyprus", "Czech Republic", "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia", "Spain and Sweden"
            ];
    @endphp
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
            <br>
            <span class="font-bold">{{ $order->invoiceNo }} </span>
        </div>
    </div>
    <div class="info ">
        <!-- company info -->
        <div class="company w-45 m-right ">
            <h5 class="font-bold">Sold By</h5>
            <div class="border  px-4 py-2 ">
                <span>{{ \App\Facades\Helper::getAppName() }}</span><br>
                <span>
                    {{ \App\Facades\Helper::getStreet() }}<br>
                    {{ \App\Facades\Helper::getZipcode() }}
                    {{ \App\Facades\Helper::getCity() }}<br>
                    {{ \App\Facades\Helper::getCountry() }}
                </span>
                <br>
                <span><span class="font-bold">VAT No: </span>{{ \App\Facades\Helper::getVatNo() }}</span>
            </div>
        </div>

        <!-- customer info -->
        <div class="customer w-45 m-left text-left ">
            <h5 class="font-bold">Customer</h5>
            <div class="border  px-4 py-2 ">
                <span>{{ $order->customer->name }} {{ $order->customer->surname }}</span>
                <br>
                @if($order->customer->companyName)
                    <span>{{ $order->customer->companyName}}</span>
                    <br>
                @endif
                <span>
                    {{ $order->customer->billingAddress['street'] }}<br>
                    {{ $order->customer->billingAddress['zipcode'] }}
                    {{ $order->customer->billingAddress['city'] }} <br>
                    {{ $order->customer->billingAddress['country'] }}
                </span>
                @if($order->customer->companyName && in_array($order->customer->billingAddress['country'], $countries))
                    <span><span class="font-bold">VAT No: </span>{{ $order->customer->euVatNo}}</span>
                @endif

                <br>

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
                    <td class="px-6 py-4 border-2 whitespace-nowrap">{{ $orderItem->product->sku }}</td>
                    <td class="px-6 py-4 border-2 whitespace-nowrap">{{ $orderItem->product->name }}</td>
                    <td class="px-6 py-4 border-2 whitespace-nowrap text-right">1</td>
                    <td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ ($orderItem->customer_currency === "EUR" ? "€ " : "$") . (float)number_format($orderItem->customer_amount, 2) }}</td>
                    <td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ ($orderItem->customer_currency === "EUR" ? "€ " : "$") . (float)number_format($orderItem->customer_amount, 2) }}</td>
                </tr>
            @endforeach

            <tr>
                <th scope="col" colspan="5" class="px-6 py-5 text-right text-sm text-black uppercase font-bold">Amount</th>
                <td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ ($order->customer_currency === "EUR" ? "€ " : "$") . (float)number_format($order->customer_amount, 2) }}</td>
            </tr>
            <tr>
                <th scope="col" colspan="5" class="px-6 py-5 text-right text-sm text-black uppercase font-bold">Discount (-)</th>
                <td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ ($order->customer_currency === "EUR" ? "€ " : "$") . (float)number_format($order->customer_total_discount, 2) }}</td>
            </tr>
            <tr>
                <th scope="col" colspan="5" class="px-6 py-5 text-right text-sm text-black uppercase font-bold">Subtotal</th>
                <td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ ($order->customer_currency === "EUR" ? "€ " : "$") . (float)number_format(($order->vat_amount - $order->customer_total_discount), 2) }}</td>
            </tr>
            <tr>
                <th scope="col" colspan="5" class="px-6 py-5 text-right text-sm text-black uppercase font-bold">VAT ({{ $order->vat }} {{ $order->vatType }})</th>
                <td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ ($order->customer_currency === "EUR" ? "€ " : "$") . (float)number_format($order->vat_amount, 2) }}</td>
            </tr>

            <tr>
                <th scope="col" colspan="5" class="px-6 py-5 text-right text-sm text-black uppercase font-bold">TOTAL</th>
                <td class="px-6 py-4 border-2 whitespace-nowrap text-right">{{ ($order->customer_currency === "EUR" ? "€ " : "$") . (float)number_format($order->customer_grand_total, 2)  }}</td>
            </tr>

            </tbody>
        </table>
    </div>

    <!-- footer -->
    <div class="justify-center footer bottom">
        <div class="">
            <p class="text-xs">
                Email us at info@wrapmotif.com with any questions
            </p>

            <div class="flex justify-center my-3">
                <img class="logo" src="{{ asset('images/Black favicon-01.png') }}" alt="logo" style="height:30px" />
            </div>
            <p class="text-xs mt-1 text-center">
                www.wrapmotif.com
            </p>
        </div>
    </div>
@endsection
