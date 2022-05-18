@component('mail::message')
### Hello {{ $customer->name }},

Thank you for creating a WRAPMOTIF account!
You are only a few simple steps away from having an outrageously epic car wrap design.

1. Buy your favorite universal design or order a custom design.
2. Download the ready-to-print files.
3. Contact a professional print and wrap shop for an appointment.


@component('mail::button', ['url' => config('app.frontend_url')."/designs"])
    Universal Designs
@endcomponent

@component('mail::subcopy')
    If you have any questions, do not hesitate to ask us.
@endcomponent
@lang('Kind regards'),<br>
{{ \App\Facades\Helper::getAppName()}} team
@endcomponent
