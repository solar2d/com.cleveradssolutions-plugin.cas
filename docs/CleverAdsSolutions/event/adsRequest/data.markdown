# event.data

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [String][api.type.string]
> __Event__             [adsRequest][plugin.unityads.event.adsRequest]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Unity Ads, adsRequest, data
> __See also__			[adsRequest][plugin.unityads.event.adsRequest]
>						[unityads.*][plugin.unityads]
> --------------------- ------------------------------------------------------------------------------------------

## Overview

JSON-encoded [string][api.type.String]. Provides additional context for certain event [phases][plugin.unityads.event.adsRequest.phase] with the following properties: 

* `adType` ([Number][api.type.Number]) &mdash; Type of ad, that called an event (0 - Banner, 1 - Interstital, 2 - Rewarded).