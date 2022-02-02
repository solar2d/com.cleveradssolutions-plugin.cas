-- Clever Ads Solution plugin

local Library = require "CoronaLibrary"

-- Create library
local lib = Library:new{ name="plugin.cas", publisherId="com.cleveradssolution", version=10 }

-------------------------------------------------------------------------------
-- BEGIN
-------------------------------------------------------------------------------

-- This sample implements the following Lua:
-- 
--    local cas = require "plugin.cas"
--    cas.init()
--    

local function showWarning(functionName)
    print( functionName .. " WARNING: The Clever Ads Solution plugin is only supported on Android & iOS devices. Please build for device")
end

function lib.init()
    showWarning("cas.init()")
end

function lib.validateIntegration()
    showWarning("cas.validateIntegration()")
end

function lib.setDebugMode()
    showWarning("cas.debugMode()")
end

function lib.isBannerReady()
    showWarning("cas.isBannerReady()")
end

function lib.isInterstitialReady()
    showWarning("cas.isInterstitialReady()")
end

function lib.isRewardedReady()
    showWarning("cas.isRewardedReady()")
end

function lib.setBannerPosition()
    showWarning("cas.setBannerPosition()")
end

function lib.setBannerSize()
    showWarning("cas.setBannerSize()")
end

function lib.showBanner()
    showWarning("cas.showBanner()")
end

function lib.hideBanner()
    showWarning("cas.hideBanner()")
end

function lib.showInterstitial()
    showWarning("cas.showInterstitial()")
end

function lib.showRewarded()
    showWarning("cas.showRewarded()")
end

function lib.setUserConsent() 
    showWarning("cas.setUserConsent")
end 

function lib.setCcpaStatus() 
    showWarning("cas.setCcpaStatus")
end

function lib.setTaggedAudience()
    showWarning("cas.setTaggedAudience")
end

-------------------------------------------------------------------------------
-- END
-------------------------------------------------------------------------------

-- Return an instance
return lib
