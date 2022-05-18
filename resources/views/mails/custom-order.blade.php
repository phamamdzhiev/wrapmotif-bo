@component('mail::message')
### Hello {{ $order->customer->name }},

Thank you for giving us the opportunity to customize a design of your imagination. We are so grateful for the pleasure of serving you and hope we will meet your expectations. We will start working on the custom design, and it may take us up to two weeks. You will receive a notification as soon as your custom design is ready.

You can find your request in your profile under the tab <a href="{{config('app.frontend_url')."/profile/custom-orders"}}">custom orders</a>.

@component('mail::subcopy')
    If you have any questions, do not hesitate to ask us.
@endcomponent
@lang('Kind regards'),<br>
{{ \App\Facades\Helper::getAppName()}} team
@endcomponent
