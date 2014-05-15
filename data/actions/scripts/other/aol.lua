local items = 2173 -- put aol id
function onUse(cid, item, fromPosition, itemEx, toPosition)
	doPlayerAddItem(cid,items,1)
	doPlayerSendTextMessage(cid,27,"You have recieved a free aol.")
	return true
end