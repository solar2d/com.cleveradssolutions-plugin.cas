# event.adType

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [String][api.type.String]
> __Event__             [adsRequest][plugin.cas.event.adsRequest]
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS, adsRequest, adType
> __See also__			[adsRequest][plugin.cas.event.adsRequest]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------

## Overview

The type of ad that was loaded, shown, clicked/tapped, or closed for example `"banner"`, `"rewarded"`, `"interstitial"` or `"app_return"`. If [event.phase][plugin.cas.event.adsRequest.phase] is `"adFailedToLoad"` or `"showFailed"`, indicates the type of ad that failed to load or shown.
