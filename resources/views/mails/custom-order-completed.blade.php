@component('mail::message')
### Hello {{ $order->customer->name }},

Congratulations, your custom design is ready!

We would like to thank you again for your trust. Our team put in a lot of creativity and excellence to meet your expectations. We hope you will be satisfied with this epic result.

You can find your custom design in your profile under the tab <a href="{{config('app.frontend_url')."/profile/custom-orders"}}">custom orders</a>. You can take a look at the previews of this design and place the order. When you place the order, you will purchase the ready-to-print file of this design for the remaining amount. This means we have already taken into account the paid deposit.

@component('mail::subcopy')
    If you have any questions, do not hesitate to ask us.
@endcomponent
@lang('Kind regards'),<br>
{{ \App\Facades\Helper::getAppName()}} team
@endcomponent
