# cas.setBannerSize()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS, setBannerSize
> __See also__          [cas.showBanner()][plugin.cas.isAdReady]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Set banner size.

<div class="guide-notebox">
<div class="notebox-title">Note</div>

Once you initialize the plugin with [cas.init()][cas.cas.init], `CAS SDK` will automatically start loading ads. You can set Banner Size or change Banner Position before showing a banner.

</div>


## Syntax

    cas.setBannerSize(bannerSizeId)

##### bannerSizeId ~^(required)^~
_[Number][api.type.Number]._ The size banner id `(1 - Banner, 2 - Adaptive Banner, 3 - Smart Banner, 4 - LeaderBoard Banner, 5 - Medium Rectangle Banner)`.

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

-- Set banner size
cas.setBannerSize(1)

-- Sometime later, show an ad
if ( cas.isAdReady( 0 ) ) then
	cas.showBanner()
end
``````