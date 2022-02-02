# cas.init()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Keywords__          ads, advertising, Clevel Ads Solutions, CAS, init
> __See also__          [cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

`cas.init()` initializes the CAS&nbsp; plugin. This call is required and must be executed before making other CAS&nbsp; calls such as [cas.showInterstitial()][plugin.cas.showInterstitial].

Once initialized, CAS&nbsp; will automatically start loading ads for the enabled types of ads.

## Syntax

    cas.init( listener, params )

##### listener ~^(required)^~
_[Listener][api.type.Listener]._ Listener function that will receive [adsRequest][plugin.cas.event.adsRequest] events.

##### params ~^(required)^~
_[Table][api.type.Table]._ Table containing CAS&nbsp; initialization values — see the next section for details.


## Parameter Reference

The `params` table includes parameters for CAS&nbsp; initialization.

##### managerId ~^(required)^~
_[String][api.type.String]._ The managerId for your app, gathered from the CAS&nbsp; [dashboard](https://cleveradssolutions.com/).

##### testMode ~^(optional)^~
_[Boolean][api.type.Boolean]._ Set this value to `true` to enable test ads. Default is `false`.

##### banner ~^(optional)^~
_[Boolean][api.type.Boolean]._ Set this value to `true` to enable banner ads. Default is `false`.

##### interstitial ~^(optional)^~
_[Boolean][api.type.Boolean]._ Set this value to `true` to enable interstitial ads. Default is `false`.

##### rewarded ~^(optional)^~
_[Boolean][api.type.Boolean]._ Set this value to `true` to enable rewarded ads. Default is `false`.

##### appReturn ~^(optional)^~
_[Boolean][api.type.Boolean]._ Set this value to `true` to enable AppReturn ads. Default is `false`.

##### userConsent ~^(optional)^~
_[String][api.type.String]._ Reed more [here](/setUserConsent).

##### ccpaStatus ~^(optional)^~
_[String][api.type.String]._ Reed more [here](/setCcpaStatus).

##### taggedAudience ~^(optional)^~
_[String][api.type.String]._ Reed more [here](/setTaggedAudience).

## Example

``````lua
local cas = require( "plugin.cas" )

-- CAS listener function
local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
		print( event.provider )
	end
end

-- Initialize the CAS plugin (without optional values)
cas.init( adListener, { managerId="YOUR_MANAGER_ID", testMode=true, banner=true, interstitial=false, rewarded=true, appReturn=false } )

-- OR 

-- Initialize the CAS plugin (with optional values)
cas.init( adListener, { managerId="YOUR_MANAGER_ID", testMode=true, banner=true, interstitial=false, rewarded=true, appReturn=false, userConsent="accepted", ccpaStatus="opt_in_sale", taggedAudience="not_children" } )
``````
