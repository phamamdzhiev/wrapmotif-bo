@component('mail::layout')
{{-- Header --}}
@slot('header')
@component('mail::header', ['url' => config('app.url')])
{{ \App\Facades\Helper::getAppName()}}
@endcomponent
@endslot

{{-- Body --}}
{{ $slot }}

{{-- Subcopy --}}
@isset($subcopy)
@slot('subcopy')
@component('mail::subcopy')
{{ $subcopy }}
@endcomponent
@endslot
@endisset

{{-- Footer --}}
@slot('footer')
@component('mail::footer')
<p style="margin-bottom:5px;">
<a style="margin-right: 1rem" href="https://www.instagram.com/wrapmotif/"><img src="https://www.wrapmotif.com/images/social/insta-grey.png" style="width: 32px; height: 32px"></a>
<a style="margin-right: 1rem" href="https://m.youtube.com/channel/UCD7bjVm5rnqXtod0vBgiwUQ"><img
        src="https://www.wrapmotif.com/images/social/yt-grey.png" style="height: 32px; width: 32px"></a>
<a href="https://nl.pinterest.com/wrapmotif/_saved/"><img
        src="https://www.wrapmotif.com/images/social/pinterest-grey.png" style="height: 32px; width: 32px"></a>
</p>
<p>
© {{ date('Y') }} {{ \App\Facades\Helper::getAppName() }}. @lang('All rights reserved.')
</p>
@endcomponent
@endslot
@endcomponent
