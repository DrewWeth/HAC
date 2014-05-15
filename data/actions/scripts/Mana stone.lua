function onUse(cid, item, fromPosition, itemEx, toPosition)
	if (getPlayerVocation(cid)==1 or getPlayerVocation(cid)==2) then
		setCreatureMaxMana(cid, (getCreatureMaxMana(cid) + 100))
		doCreatureSay(cid, "You gained 100 Max Mana. Now your Mana is ".. getCreatureMaxMana(cid) .."!" ,19)
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREWORK_BLUE)
		doRemoveItem(item.uid)
	end
	return TRUE
end