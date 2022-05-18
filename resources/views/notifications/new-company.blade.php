@component('mail::message')
### Hello {{ $user->name ?? "Admin" }},

A new company has been joined successfully.

@component('mail::panel')
    <span style="font-weight: bold">Company Name:</span> {{$company->company_name}}<br>
    <span style="font-weight: bold">Owner:</span> {{$company->customer->name}}<br>
@endcomponent

@component('mail::button', ['url' => "/partners"])
    View Details
@endcomponent

Thanks,<br>
{{ \App\Facades\Helper::getAppName()}}
@endcomponent
