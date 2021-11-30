# event.phase

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [String][api.type.String]
> __Event__             [adsRequest][plugin.cas.event.adsRequest]
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS, adsRequest, phase
> __See also__			[adsRequest][plugin.cas.event.adsRequest]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------

## Overview

[String][api.type.String] value indicating the phase of the [adsRequest][plugin.cas.event.adsRequest] event. Possible values include:

* `"init"` &mdash; Indicates that the Clever Ads Solutions SDK was initialized successfully.

* `"adFailedToLoad"` &mdash; Indicates that an ad failed to load. For this phase, [event.isError][plugin.cas.event.adsRequest.isError] will be `true`. Additionally, [event.adType][plugin.cas.event.adsRequest.adType], and [event.response][plugin.cas.event.adsRequest.response] can provide additional context.

* `"shown"` &mdash; Indicates that an ad shown successfully. For this phase, [event.adType][plugin.cas.event.adsRequest.adType] can provide additional context.

* `"showFailed"` &mdash; Indicates that an ad failed to show. For this phase, [event.isError][plugin.cas.event.adsRequest.isError] will be `true`. Additionally, [event.adType][plugin.cas.event.adsRequest.adType], and [event.response][plugin.cas.event.adsRequest.response] can provide additional context.

* `"loaded"` &mdash; Indicates that an ad loaded successfully. For this phase, [event.adType][plugin.cas.event.adsRequest.adType] can provide additional context.

* `"clicked"` &mdash; Indicates that an ad was clicked/tapped. For this phase, [event.adType][plugin.cas.event.adsRequest.adType] can provide additional context.

* `"closed"` &mdash; Indicates that an ad was closed. For this phase, [event.adType][plugin.cas.event.adsRequest.adType] can provide additional context.

* `"completed"` &mdash; Indicates that a rewarded video ad has been viewed to its completion and that a reward should be given. For this phase, [event.adType][plugin.cas.event.adsRequest.adType] can provide additional context.
