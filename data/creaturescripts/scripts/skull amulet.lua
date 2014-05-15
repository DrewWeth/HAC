function onPrepareDeath(cid, lastHitKiller, mostDamageKiller)
if (getCreatureSkullType(cid) >= 4) then
	if (getPlayerSlotItem(cid, CONST_SLOT_NECKLACE).itemid == 2131) then
		doCreatureSetDropLoot(cid, false)      
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYAREA)
		doCreatureSay(cid, "Skull Amulet!", TALKTYPE_ORANGE_1)
	end
	return true
	end
	return true
	end