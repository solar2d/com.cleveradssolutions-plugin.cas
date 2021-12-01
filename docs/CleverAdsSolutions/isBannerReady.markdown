# cas.isBannerReady()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      [Boolean][api.type.Boolean]
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS, isBannerReady
> __See also__          [cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Returns a [boolean][api.type.Boolean] indicating whether a banner ad is loaded and ready for display.

## Syntax

    cas.isBannerReady()

## Example

``````lua
local cas = require( "plugin.cas" )

-- CAS listener function
local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
		print( event.provider )
	end
end

-- Initialize the CAS plugin
cas.init( adListener, { managerId="YOUR_MANAGER_ID", testMode=true, banner=true, interstitial=false, rewarded=false, appReturn=false } )

-- Sometime later, check if an banner ad is ready for display
print( cas.isBannerReady() )
``````