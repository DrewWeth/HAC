function onPrepareDeath(cid, lastHitKiller, mostDamageKiller)
	if (getPlayerSlotItem(cid, CONST_SLOT_NECKLACE).itemid == 10134) then 
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYAREA)
		doCreatureSay(cid, "Forever Amulet!", TALKTYPE_ORANGE_1)
	elseif (getPlayerSlotItem(cid, CONST_SLOT_NECKLACE).itemid == 2131) and (getCreatureSkullType(cid) < 4) then 
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYAREA)
		doCreatureSay(cid, "Skull Amulet!", TALKTYPE_ORANGE_1)
 
	end
	return true
	end