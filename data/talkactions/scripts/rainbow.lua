local default_time = 30 -- time in seconds
local fr = 5 -- frequency, changes per second
local access_to_change_time = 3 -- access needed to set own time
-- end of config
 
local frequency = 1000 / fr
local rainbowEvents = {}
 
function rainbowOutfit(cid, count)
	if(isPlayer(cid)) then
		local newOutfit = getCreatureOutfit(cid)
		newOutfit.lookHead = math.random(133)
		newOutfit.lookBody = math.random(133)
		newOutfit.lookLegs = math.random(133)
		newOutfit.lookFeet = math.random(133)
		doSetCreatureOutfit(cid, newOutfit, frequency + 5)
		if(count >= 1) then
			rainbowEvents[getPlayerGUID(cid)] = addEvent(rainbowOutfit, frequency, cid, count - 1)
		end
	end
end
 
function onSay(cid, words, param)
	if(rainbowEvents[getPlayerGUID(cid)] ~= nil) then
		stopEvent(rainbowEvents[getPlayerGUID(cid)])
	end
	if(param ~= '' and getPlayerAccess(cid) >= access_to_change_time) then
		rainbowOutfit(cid, tonumber(param) * fr)
	else
		rainbowOutfit(cid, default_time * fr)
	end
	return true
end