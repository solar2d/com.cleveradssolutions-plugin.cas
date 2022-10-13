# cas.setDebugMode()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Keywords__          ads, advertising, Clever Ads Solutions, CAS, setDebugMode
> __See also__          [cas.validateIntegration()][plugin.cas.validateIntegration]
>						[cas.*][plugin.cas]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Set debug mode.

<div class="guide-notebox">
<div class="notebox-title">Note</div>

Once you initialize the plugin with [cas.init()][cas.cas.init], `CAS SDK` will automatically start loading ads. You can set debug mode for gettings logs.

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

-- Set debug mode 
cas.setDebugMode(true)

-- Initialize the CAS plugin
cas.init( adListener, { managerId="YOUR_MANAGER_ID", testMode=true, banner=true, interstitial=false, rewarded=true, appReturn=false } )

end
``````
