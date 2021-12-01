# cas.isInterstitialReady()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      [Boolean][api.type.Boolean]
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS, isInterstitialReady
> __See also__          [cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Returns a [boolean][api.type.Boolean] indicating whether an interstitial ad is loaded and ready for display.

## Syntax

    cas.isInterstitialReady()

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
cas.init( adListener, { managerId="YOUR_MANAGER_ID", testMode=true, banner=false, interstitial=true, rewarded=false, appReturn=false } )

-- Sometime later, check if an banner ad is ready for display
print( cas.isInterstitialReady() )
``````