local storage = 3000
 
function onLogin(cid)
	if isPlayer(cid) and getCreatureStorage(cid, storage) < 0 then
		local outfit = getCreatureOutfit(cid)
		doCreatureChangeOutfit(cid, {lookType = outfit.lookType, lookHead = math.random(132), lookBody = math.random(132), lookLegs = math.random(132), lookFeet = math.random(132), lookAddons = outfit.lookAddons})
		doCreatureSetStorage(cid, storage, 1)
	end
	return true
end