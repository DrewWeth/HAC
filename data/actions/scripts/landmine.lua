function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getTilePzInfo(fromPosition) == FALSE then
		doTransformItem(itemEx.uid, 6299)
		doDecayItem(itemEx.uid)
	else
		doPlayerSendCancel(cid, 'You cannot use this in PZ.') 
	return true
	end
end