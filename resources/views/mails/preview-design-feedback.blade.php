@component('mail::message')
# Hello {{$design->customer->name}},

Congratulations, your preview design is ready!

We would like to thank you again for your trust. We hope you will be satisfied with this preview. This way you will have a more realistic idea of what your specified car will look like with your favorite design.

You can find the preview in your profile under the tab <a href="{{config('app.frontend_url')."/profile/preview-designs"}}">preview designs</a>. You can take a look at the previews of this design and place the order. When you place the order, you will purchase the ready-to-print file of this design.

@component('mail::subcopy')
    If you have any questions, do not hesitate to ask us.
@endcomponent
@lang('Kind regards'),<br>
{{ \App\Facades\Helper::getAppName()}} team
@endcomponent
