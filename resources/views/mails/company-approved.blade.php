@component('mail::message')
### Hello {{ $company->company_name }},

We have received your request and will let you know as soon as possible whether we approve your registration and you have become our partner.
After approval, you will be able to enjoy all the benefits for your business.

Find or edit your company details in your profile.

@component('mail::subcopy')
    If you have any questions, do not hesitate to ask us.
@endcomponent
@lang('Kind regards'),<br>
{{ \App\Facades\Helper::getAppName()}} team
@endcomponent
