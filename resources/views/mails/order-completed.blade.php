@component('mail::message')
### Hello {{ $order->customer->name }},

Thank you for your purchase! We are so grateful for the pleasure of serving you and hope we met your expectations. You can download the ready-to-print file and the order receipt in your profile under the tab <a href="{{config('app.frontend_url')."/profile/orders"}}">purchase orders.</a>


@component('mail::subcopy')
 If you have any questions, do not hesitate to ask us.
@endcomponent
@lang('Kind regards'),<br>
{{ \App\Facades\Helper::getAppName()}} team
@endcomponent
