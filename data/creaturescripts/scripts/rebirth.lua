local storage = 85987 -- same as in rebirth npc

function onLook(cid, thing, position, lookDistance)
	if not isPlayer(thing.uid) then
		return true
	end

	doPlayerSetSpecialDescription(thing.uid, '. rebirths: ' .. math.max(0, getCreatureStorage(thing.uid, storage)))
	return true
end


	