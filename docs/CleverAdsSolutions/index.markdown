# cas.*

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library][api.type.Library]
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS
> __Platforms__			Android, iOS in future
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The CleverAdsSolutions plugin allows developers to monetize users through ads banners, interstitial and rewarded video ads.

<div class="guide-notebox-imp">

## Registration

Before you can use this plugin, you must [register](https://cleveradssolutions.com/) your accont.


## Syntax

	local cas = require( "plugin.cas" )


## Functions

#### [cas.init()][plugin.cas.init]

#### [cas.validateIntegration()][plugin.cas.validateIntegration]

#### [cas.setDebugMode()][plugin.cas.setDebugMode]

#### [cas.isBannerReady()][plugin.cas.isBannerReady]

#### [cas.isInterstitialReady()][plugin.cas.isInterstitialReady]

#### [cas.isRewardedReady()][plugin.cas.isRewardedReady]

#### [cas.setBannerSize()][plugin.cas.setBannerSize]

#### [cas.setBannerPosition()][plugin.cas.setBannerPosition]

#### [cas.showBanner()][plugin.cas.showBanner]

#### [cas.hideBanner()][plugin.cas.hideBanner]

#### [cas.showInterstitial()][plugin.cas.showInterstitial]

#### [cas.showRewarded()][plugin.cas.showRewarded]

#### [cas.setUserConsent()][plugin.cas.setUserConsent]

#### [cas.setCcpaStatus()][plugin.cas.setCcpaStatus]

#### [cas.setTaggedAudience()][plugin.cas.setTaggedAudience]

## Events

#### [adsRequest][plugin.cas.event.adsRequest]


## Project Settings

To use this plugin, add an entry into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.&nbsp;

``````lua
settings =
{
	android =
	{
		minSdkVersion = "19",
	},
	plugins =
	{
		["plugin.cas"] =
		{
			publisherId = "com.cleveradssolutions"
		},
	},
}
``````

<div class="guide-notebox-imp">
<div class="notebox-title-imp">Important</div>

1. Follow the [link](http://cleveradssolutions.com/) to download a cas_settings[own_id].json file and drop into the AndroidResources/res/raw/ folder of your project.

`⚠️ [own_id] is not an identifier of the manager. You enter a manager ID to download settings file.`


For android:value insert AdMob App ID in quotes, as shown below.

``````lua
android =
	{
		applicationChildElements =
        {
            [[
                <meta-data android:name="com.google.android.gms.ads.APPLICATION_ID"
                    android:value="ca-app-pub-3940256099942544~3347511713"/>  -- replace with your app id. See: https://goo.gl/fQ2neu
            ]],
        },
		minSdkVersion = "19",
	},

``````

<div class="guide-notebox">
<div class="notebox-title">Note</div>

For Android, the following permissions/features are automatically added when using this plugin:

* `"android.permission.INTERNET"`
* `"android.permission.ACCESS_NETWORK_STATE"`

Also, minimum Android API level required is 19

</div>
</div>


## Support

* [https://cleveradssolutions.com/](https://cleveradssolutions.com/)
