function onUse(cid, item, fromPosition, itemEx, toPosition)
	return
	hasCondition(cid, CONDITION_INFIGHT) and
		doPlayerSendCancel(cid, "Sorry, you are in a fight.")
	or getPlayerLevel(cid) < getConfigInfo("levelToBuyHouse") and
		doPlayerSendCancel(cid, "Sorry, not possible.")
	or not getHouseByPlayerGUID(getPlayerGUID(cid)) and
		doPlayerSendCancel(cid, "Sorry, but you do not own a house.")
	or doTeleportThing(cid, getHouseEntry(getHouseByPlayerGUID(getPlayerGUID(cid))))
end
