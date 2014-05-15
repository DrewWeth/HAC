function onUse(cid, item, fromPosition, itemEx, toPosition)
	setCreatureMaxHealth(cid, (getCreatureMaxHealth(cid) + 100))
	doCreatureSay(cid, "You gained 100 health. Now your health is ".. getCreatureMaxHealth(cid) .."!" ,19)
	doSendMagicEffect(getCreaturePosition(cid), 10)
	doRemoveItem(item.uid)
	return TRUE
end