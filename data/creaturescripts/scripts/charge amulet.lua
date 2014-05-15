function onPrepareDeath(cid, lastHitKiller, mostDamageKiller)
  local amulet = getPlayerSlotItem(cid, CONST_SLOT_NECKLACE)
        if ((getPlayerSlotItem(cid, CONST_SLOT_NECKLACE).itemid == 2131) or (getPlayerSlotItem(cid, CONST_SLOT_NECKLACE).itemid == 10134)) then
			doChangeTypeItem(amulet.uid, amulet.type+1)    
                doSendMagicEffect(getCreaturePosition(cid), 39)
 	end
	return true
	end