# cas.setDebugMode()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, CleverAdsSolutions Ads, show
> __See also__          [cas.setDebugMode()][plugin.cas.setDebugMode]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Set banner position.

<div class="guide-notebox">
<div class="notebox-title">Note</div>

The CAS SDK provides an easy way to verify that you’ve successfully integrated any additional adapters; it also makes sure all required dependencies and frameworks were added for the various mediated ad networks.
After you have finished your integration, call the following static method and confirm that all networks you have implemented are marked as VERIFIED

</div>


## Syntax

    cas.validateIntegration()

## Example

``````lua
local cas = require( "plugin.cas" )

-- CAS listener function
local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
		print( event.provider )
	end
end

-- Validate Integration
cas.validateIntegration()

end
``````