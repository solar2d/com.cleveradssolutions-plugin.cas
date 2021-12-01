# cas.setBannerSize()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS, setBannerSize
> __See also__          [cas.showBanner()][plugin.cas.showBanner]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Set banner size.

<div class="guide-notebox">
<div class="notebox-title">Note</div>

Once you initialize the plugin with [cas.init()][cas.cas.init], `CAS SDK` will automatically start loading ads. You can set Banner Size or change Banner Position before showing a banner.

## Ad Size
| Size in dp (WxH) |      Description     |    Availability    | AdSize constant |
|:----------------:|:--------------------:|:------------------:|:---------------:|
|      320x50      |    Standard Banner   | Phones and Tablets |     banner      |
|      728x90      |    IAB Leaderboard   |       Tablets      |   leaderboard   |
|      300x250     | IAB Medium Rectangle | Phones and Tablets |      mrec       |

### Adaptive Banners
Adaptive banners are the next generation of responsive ads, maximizing performance by optimizing ad size for each device.  
To pick the best ad size, adaptive banners use fixed aspect ratios instead of fixed heights. This results in banner ads that occupy a more consistent portion of the screen across devices and provide opportunities for improved performance. [You can read more in this article.](https://developers.google.com/admob/android/banner/adaptive)
***
- AdSize constant of adaptive banner is `adaptive`.

### Smart Banners
Typically, Smart Banners on phones have a Standard Banner size. Or on tablets an IAB Leaderboard size.
***
- AdSize constant of smart banner is `smart`.

</div>

## Syntax

    cas.setBannerSize(bannerSize)

##### bannerSize ~^(required)^~
_[String][api.type.String]._ The size of a banner: `"banner"`, `"adaptive"`, `"smart"`, `"leaderboard"` or `"mrec"`.

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
cas.setBannerSize("adaptive")

-- Sometime later, show an ad
if ( cas.isBannerReady() ) then
	cas.showBanner()
end
``````