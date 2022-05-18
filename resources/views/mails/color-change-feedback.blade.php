@component('mail::message')
# Hello {{$colorChange->customer->name}},

Congratulations, your color change is ready!

We would like to thank you again for your trust. We hope you will be satisfied with this new color.

You can find the color change in your profile under the tab <a href="{{config('app.frontend_url')."/profile/color-changes"}}">color changes</a>. You can take a look at the previews of this design and place the order. When you place the order, you will purchase the matching ready-to-print file.

@component('mail::subcopy')
    If you have any questions, do not hesitate to ask us.
@endcomponent
@lang('Kind regards'),<br>
{{ \App\Facades\Helper::getAppName()}} team
@endcomponent
