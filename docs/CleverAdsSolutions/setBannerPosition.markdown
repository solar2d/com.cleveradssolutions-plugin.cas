# cas.setBannerPosition()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, CleverAdsSolutions Ads, show
> __See also__          [cas.showBanner()][plugin.cas.isAdReady]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Set banner position.

<div class="guide-notebox">
<div class="notebox-title">Note</div>

Once you initialize the plugin with [cas.init()][cas.cas.init], CAS&nbsp; will automatically start loading ads. You can set Banner Size or change Banner Position before showing a banner.

</div>


## Syntax

    cas.setBannerPosition(bannerPositionId)

##### setBannerPosition ~^(required)^~
_[Number][api.type.Number]._ The position banner id. 0 - Top Center, 1 - Top Left, 2 - Top Right, 3 - Bottom Center, 4 - Bottom Left, 5 - Bottom Right

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
cas.init( adListener, { gameId="YOUR_MANAGER_ID", testMode=true, banner=true, interstitial=false, rewarded=true, appReturn=false } )

-- Set banner position
cas.setBannerPosition(1)

-- Sometime later, show an ad
if ( cas.isAdReady( 0 ) ) then
	cas.showBanner()
end
``````