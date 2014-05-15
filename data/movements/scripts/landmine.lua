function onStepIn(cid, item, pos)
	if(item.itemid == 6299) then
		if(isPlayer(cid)) then
			doTargetCombatHealth(0, cid, COMBAT_PHYSICALDAMAGE, -5000000000, -5000000000, CONST_ME_FIREAREA)
			doRemoveItem(item.uid)
		end
	end
	return true
end