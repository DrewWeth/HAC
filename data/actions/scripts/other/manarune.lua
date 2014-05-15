function onUse(cid, item, fromPosition, itemEx, toPosition)
	return doPlayerAddMana(itemEx.uid, 20000) and doSendAnimatedText(getThingPos(cid), "Manarune!", TEXTCOLOR_WHITE)
end