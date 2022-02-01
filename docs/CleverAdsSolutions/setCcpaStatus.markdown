# cas.setCcpaStatus()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS, setCcpaStatus
> __See also__          [cas.setCcpaStatus()][plugin.cas.setCcpaStatus]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

### CCPA Compliance

<div class="guide-notebox">
<div class="notebox-title">Note</div>

This documentation is provided for compliance with the California Consumer Privacy Act (CCPA). In order to pass CCPA opt-outs from your users, you should make use of the APIs discussed below to inform CAS and all downstream consumers of this information.  

**Passing Opt-outs**
In the Android SDK v1.4, we added privacy methods to our AdsSettings API for additional support in CCPA compliance. To successfully pass us an opt-out signal, the publisher will need to provide CAS a signal to indicate whether CCPA legislation is applicable to the user in addition to the actual consent value.  

When user has **opted-in** to the sale of their data, as defined by the CCPA, and CAS should continue with our standard processing of user information.  

``````lua
cas.setCcpaStatus("opt_in_sale")
``````

When user has **opted-out** to the sale of their data use:  

``````lua
cas.setCcpaStatus("opt_out_sale")
``````

> We recommend to set Privacy API before initializing CAS SDK.

</div>


## Syntax

   cas.setCcpaStatus(ccpaStatus)

##### ccpaStatus ~^(required)^~
_[String][api.type.String]._ CCPA value: `"opt_in_sale"`, `"opt_out_sale"`, `"undefined"`.

## Example

``````lua
local cas = require( "plugin.cas" )

-- CAS listener function
local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
		print( event.provider )
	end
end

-- Set user consent
cas.setCcpaStatus("opt_in_sale")

-- Initialize the CAS plugin
cas.init( adListener, { managerId="YOUR_MANAGER_ID", testMode=true, banner=true, interstitial=false, rewarded=false, appReturn=false } )

end
``````
