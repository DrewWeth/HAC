function onUse(cid, item, frompos, item2, topos)

	if item.uid == 6132 then
		if getPlayerStorageValue(cid,6132) == -1 then
			local bp = doPlayerAddItem(cid,1987,1)
			doAddContainerItem(bp,6132,1) 
			setPlayerStorageValue(cid,6132,1)
			doPlayerSendTextMessage(cid,25,'You have found a bag')
	elseif getPlayerStorageValue(cid,6132) == 1 then
		doPlayerSendTextMessage(cid,25,'It is empty.')
end
return 1
else
return 0
end
end