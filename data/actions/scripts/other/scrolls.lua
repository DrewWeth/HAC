local spells = {
	[6087] = "Donated Spell",
	[6088] = "Vip Spell",
	[6089] = "Epic Spell",
        [6090] = "Legendary Spell",
}
function onUse(cid, item, frompos, itemEx, topos)
	if(spells[item.itemid]) then
		if(not(getPlayerLearnedInstantSpell(cid, spells[item.itemid]))) then
			doPlayerLearnInstantSpell(cid, spells[item.itemid])
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
			doPlayerSendTextMessage(cid, 20, "You have successfully learnes " .. spells[item.itemid])
			doRemoveItem(cid, item.uid, 1)
		else
			doPlayerSendCancel(cid, "You already know this spell.")
			doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
		end
	end
	return true
end