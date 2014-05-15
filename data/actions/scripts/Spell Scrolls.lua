local spells = {
	[1984] = "lux hur",
	[1982] = "energy hur",
	[1985] = "Spell-words",
	[1983] = "Spell-words",
}
function onUse(cid, item, frompos, itemEx, topos)
	if(spells[item.itemid]) then
		if(not(getPlayerLearnedInstantSpell(cid, spells[item.itemid]))) then
			doPlayerLearnInstantSpell(cid, spells[item.itemid])
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
			doPlayerSendTextMessage(cid, 20, "Congratulations! You have successfully learnes " .. spells[item.itemid])
			doRemoveItem(cid, item.uid, 1)
		else
			doPlayerSendCancel(cid, "You already know this spell.")
			doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
		end
	end
	return true
end