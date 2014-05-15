local cfg = {
    amount = 600000 -- here how many levels you want
	  }
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if (getPlayerLevel(cid) + cfg.amount) > 717216 then
		local levelCap = (717216 - getPlayerLevel(cid))
		doPlayerAddLevel(cid, levelCap)
		doCreatureSay(cid, "CONGRATULATIONS! You Have Advanced " .. levelCap .. " Levels!. ", TALKTYPE_ORANGE_1)
		doSendMagicEffect(getCreaturePosition(cid), 28)
		doRemoveItem(item.uid,1)
	else
		doPlayerAddLevel(cid, cfg.amount)
		doCreatureSay(cid, "CONGRATULATIONS! You Have Advanced 600000 Levels!. ", TALKTYPE_ORANGE_1)
		doSendMagicEffect(getCreaturePosition(cid), 28)
		doRemoveItem(item.uid,1)
	end
	return TRUE
end