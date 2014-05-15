function onDeath(cid, corpse, deathList)
	if isMonster(cid) then
		local x = getCreatureMaster(cid)
		if isPlayer(x) then
			if getPlayerItemCount(x, 5468) > 0 then
				doPlayerRemoveItem(x, 5468, 1)
				doPlayerAddItem(x, 7488, 1)
			end
		end
	end	
	return true
end