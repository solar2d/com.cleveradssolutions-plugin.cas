# event.adType

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [String][api.type.String]
> __Event__             [adsRequest][plugin.cas.event.adsRequest]
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS, adsRequest, adType
> __See also__			[adsRequest][plugin.cas.event.adsRequest]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------

## Overview

The type of ad that was loaded, shown, clicked/tapped, or closed. Returning as a number, where it is `0 - "banner"`, `1 - "interstitial"`, and `2 - "rewarded"`. If [event.phase][plugin.cas.event.adsRequest.phase] is `"adFailedToLoad"` or `"showFailed"`, indicates the type of ad that failed to load or shown.
