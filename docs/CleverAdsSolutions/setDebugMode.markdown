# cas.setDebugMode()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, CleverAdsSolutions Ads, show
> __See also__          [cas.validateIntegration()][plugin.cas.validateIntegration]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Set banner position.

<div class="guide-notebox">
<div class="notebox-title">Note</div>

Once you initialize the plugin with [cas.init()][cas.cas.init], CAS&nbsp; will automatically start loading ads. You can set debug mode for gettings logs after inititalization.

</div>


## Syntax

    cas.setDebugMode(isEnable)

##### isEnable ~^(required)^~
_[Boolean][api.type.Boolean]._ Enable or disable native debug mode.

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

-- Set debug mode 
cas.setDebugMode(true)
end
``````