@component('mail::message')
# Hello {{$contact->name}},

Thank you for writing to us. We have received your message, and we will get back to you as soon as possible.

@lang('Kind regards'),<br>
{{ \App\Facades\Helper::getAppName()}} team
@endcomponent
