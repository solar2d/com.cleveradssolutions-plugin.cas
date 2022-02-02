# cas.setUserConsent()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS, setUserConsent
> __See also__          [cas.setUserConsent()][plugin.cas.setUserConsent]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

### GDPR Managing Consent

<div class="guide-notebox">
<div class="notebox-title">Note</div>

This documentation is provided for compliance with the [European Union's General Data Protection Regulation (GDPR)](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32016R0679). In order to pass GDPR consent from your users, you should make use of the APIs and methods discussed below to inform CAS and all downstream consumers of this information.

Passing Consent to CAS API, use this functions:
When the user provide consent use:

``````lua
cas.setUserConsent("accepted")
``````

When the user did not consent use:

``````lua
cas.setUserConsent("denied")
``````

> We recommend to set Privacy API as a parametr in initializing CAS SDK.

</div>


## Syntax

   cas.setUserConsent(userConsent)

##### userConsent ~^(required)^~
_[String][api.type.String]._ Consent value: `"accept"`, `"denied"`, `"undefined"`.

## Example

``````lua
local cas = require( "plugin.cas" )

-- CAS listener function
local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
        -- Set user consent (not recommend)
        cas.setUserConsent("accepted")   
        
		print( event.provider )
	end
end

-- Initialize the CAS plugin
cas.init( adListener, { managerId="YOUR_MANAGER_ID", testMode=true, banner=true, interstitial=false, rewarded=false, appReturn=false } )

OR (recommend)

-- Initialize the CAS plugin (not recommend)
cas.init( adListener, { managerId="YOUR_MANAGER_ID", testMode=true, banner=true, interstitial=false, rewarded=false, appReturn=false, userConsent="accepted" } )

end
``````
