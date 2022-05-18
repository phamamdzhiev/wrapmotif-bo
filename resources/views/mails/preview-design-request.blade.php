@component('mail::message')
# Hello {{$design->customer->name}},

Thank you for your purchase!

We are so grateful for the pleasure of serving you and hope we will meet your expectations. We will start working on the preview of your car, and it may take us up to one week. You will receive a notification as soon as your preview is ready.

You can find your request in your profile under the tab <a href="{{config('app.frontend_url')."/profile/preview-designs"}}">preview designs</a>.

@component('mail::subcopy')
    If you have any questions, do not hesitate to ask us.
@endcomponent
@lang('Kind regards'),<br>
{{ \App\Facades\Helper::getAppName()}} team
@endcomponent
