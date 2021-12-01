# cas.setBannerPosition()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS, setBannerPosition
> __See also__          [cas.showBanner()][plugin.cas.showBanner]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Set banner position.

<div class="guide-notebox">
<div class="notebox-title">Note</div>

Once you initialize the plugin with [cas.init()][cas.cas.init], `CAS SDK` will automatically start loading ads. You can set Banner Size or change Banner Position before showing a banner.

</div>


## Syntax

    cas.setBannerPosition(bannerPosition)

##### bannerPosition ~^(required)^~
_[String][api.type.String]._ The position of a banner: `"top_center"`, `"top_left"`, `"top_right"`, `"bottom_center"`, `"bottom_left"` or `"bottom_right"`.

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

-- Set banner position
cas.setBannerPosition("top_center")

-- Sometime later, show an ad
if ( cas.isBannerReady() ) then
	cas.showBanner()
end
``````