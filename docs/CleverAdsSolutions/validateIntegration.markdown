# cas.validateIntegration()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS, validateIntegration
> __See also__          [cas.validateIntegration()][plugin.cas.validateIntegration]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Validate integration.

<div class="guide-notebox">
<div class="notebox-title">Note</div>

The `CAS SDK` provides an easy way to verify that you’ve successfully integrated any additional adapters; it also makes sure all required dependencies and frameworks were added for the various mediated ad networks.
After you have finished your integration, call the following method and confirm that all networks you have implemented are marked as VERIFIED

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
