@component('mail::message')
### Hello {{ $news_letter }},

We are so happy you decided to join us. Here at WRAPMOTIF, we think of ourselves and our customers as one big family, and that means helping you get the design your car deserves.
Check our outrageously car wrap designs or order an epic custom design!


@component('mail::button', ['url' => config('app.frontend_url')."/designs"])
    Universal Designs
@endcomponent

@component('mail::subcopy')
    If you have any questions or anything you want to share, you can contact us at info@wrapmotif.com.
@endcomponent
@lang('Kind regards'),<br>
{{ \App\Facades\Helper::getAppName()}} team
@endcomponent
