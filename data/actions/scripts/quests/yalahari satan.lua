function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2365 then
		if getPlayerStorageValue(cid,2365) == -1 then
			local bp = doPlayerAddItem(cid,2365,1) 
			doAddContainerItem(bp,9776,1) 
			doAddContainerItem(bp,2474,1)
			setPlayerStorageValue(cid,2365,1)
			doPlayerSendTextMessage(cid,25,'You have found a backpack of holding')
	elseif getPlayerStorageValue(cid,2365) == 1 then
		doPlayerSendTextMessage(cid,25,'It is empty.')
end
return 1
else
return 0
end
end