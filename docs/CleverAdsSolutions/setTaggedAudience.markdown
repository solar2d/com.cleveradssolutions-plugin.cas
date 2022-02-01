# cas.setTaggedAudience()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS, setTaggedAudience
> __See also__          [cas.setTaggedAudience()][plugin.cas.setTaggedAudience]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

### COPPA and EEA Compliance

<div class="guide-notebox">
<div class="notebox-title">Note</div>

This documentation is provided for additional compliance with the [Children’s Online Privacy Protection Act (COPPA)](https://www.ftc.gov/tips-advice/business-center/privacy-and-security/children%27s-privacy). Publishers may designate all inventory within their applications as being child-directed or as COPPA-applicable though our UI. Publishers who have knowledge of specific individuals as being COPPA-applicable should make use of the API discussed below to inform CAS and all downstream consumers of this information.  

You can mark your ad requests to receive treatment for users in the European Economic Area (EEA) under the age of consent. This feature is designed to help facilitate compliance with the General Data Protection Regulation (GDPR). Note that you may have other legal obligations under GDPR. Please review the European Union’s guidance and consult with your own legal counsel. Please remember that CAS tools are designed to facilitate compliance and do not relieve any particular publisher of its obligations under the law.

To indicate that your content treated as child-directed for purposes of COPPA or receive treatment for users in the European Economic Area (EEA) under the age of consent use: 

``````lua
cas.setTaggedAudience("children")
``````

To indicate that your content treated as **not** child-directed use:

``````lua
cas.setTaggedAudience("not_children")
``````

> We recommend to set Privacy API before initializing CAS SDK.

</div>


## Syntax

   cas.setTaggedAudience(taggedAudience)

##### taggedAudience ~^(required)^~
_[String][api.type.String]._ CCPA value: `"children"`, `"not_children"`, `"undefined"`.

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
cas.setTaggedAudience("not_children")

-- Initialize the CAS plugin
cas.init( adListener, { managerId="YOUR_MANAGER_ID", testMode=true, banner=true, interstitial=false, rewarded=false, appReturn=false } )

end
``````
