@component('mail::message')
### Hello {{ $company->company_name }},

Congratulations, you are approved for our partnership.
Your company will be presented on our map. Our clients from your area can find your company and will be able to contact you for your services.

@component('mail::subcopy')
    If you have any questions, do not hesitate to ask us.
@endcomponent
@lang('Kind regards'),<br>
{{ \App\Facades\Helper::getAppName()}} team
@endcomponent
