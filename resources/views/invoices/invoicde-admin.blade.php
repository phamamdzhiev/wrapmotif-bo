@extends('layouts.invoice')

@section('content')
    <div id="print" class="bg-white rounded-sm flex flex-col justify-between ">
        <!-- Pdf section -->
        <div class="p-6">
            <!-- Logo -->
            <div class="flex justify-center mt-2">
                <img class="logo" src="{{ \App\Facades\Helper::getDarkLogo() }}" alt="logo" style="width:200px" />
            </div>

            <div class="flex justify-between mt-5">
                <div class="">
                    <p class="text-sm">
                        Date of issue:
                        <br />
                        <span>{{ $order->dateFormatted }} </span>
                    </p>
                </div>

                <div class="">
                    <p class="text-right">Order receipt</p>
                    <p class="text-right text-sm">
                        <span class="font-bold">{{ $order->id }} </span>
                    </p>
                </div>
            </div>

            <div class=" mt-4" style="display: block">
                <!-- company info -->
                <div class="w-full mr-1">
                    <h5 class="font-bold">Sold By</h5>
                    <div class="border px-4 py-2">
                        <div class="text-sm">

                            <div class="text-sm">
                                <p>{{ \App\Facades\Helper::getAppName() }}</p>
                                <p>
                                    {{ \App\Facades\Helper::getStreet() }}<br>
                                    {{ \App\Facades\Helper::getZipcode() }}
                                    {{ \App\Facades\Helper::getCity() }}<br>
                                    {{ \App\Facades\Helper::getCountry() }}
                                </p>
                                <p>{{ $order->customer->euVatNo}}</p>

                            </div>

                        </div>
                    </div>
                </div>

                <!-- customer info -->
                <div class="w-full ml-1">
                    <h5 class="font-bold">Customer</h5>
                    <div class="border px-4 py-2">
                        <div class="text-sm">
                            <p><span>{{ $order->customer->name }}</span> <span>{{ $order->customer->surname }}</span></p>
                            @if($order->customer->companyName)
                                <p>{{ $order->customer->companyName}}</p>
                            @endif
                            <p><span class="font-bold">VAT No: </span>{{ $order->customer->euVatNo}}</p>
                            <p>
                                <span class="font-bold">Address: </span>
                                {{ $order->customer->billingAddress['street'] }}<br>
                                {{ $order->customer->billingAddress['zipcode'] }}
                                {{ $order->customer->billingAddress['city'] }}<br>
                                {{ $order->customer->billingAddress['country'] }}
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="mt-5">

                <!-- Items -->
                <h5 class="font-bold mb-2">Items:</h5>
                <!-- component -->
                <div class="bg-white rounded-primary shadow overflow-x-auto">
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

            </div>
        </div>

        <!-- footer -->
        <div class="flex justify-center mt-auto">
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
    </div>
@endsection
