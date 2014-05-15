function onUse(cid, item, fromPosition, itemEx, toPosition)
	return doPlayerAddMana(itemEx.uid, 350000) and doSendAnimatedText(getThingPos(cid), "Infinity Mr!", TEXTCOLOR_RED)
end