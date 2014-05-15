function onUse(cid, item, frompos, item2, topos)

	if item.uid == 65509 then
		if getPlayerStorageValue(cid,65509) == -1 then
			local bp = doPlayerAddItem(cid,10522,1)
			doAddContainerItem(bp,2493,1) 
			doAddContainerItem(bp,2470,1)
			doAddContainerItem(bp,2645,1)
			setPlayerStorageValue(cid,65509,1)
			doPlayerSendTextMessage(cid,25,'You have found a backpack')
	elseif getPlayerStorageValue(cid,65509) == 1 then
		doPlayerSendTextMessage(cid,25,'It is empty.')
end
return 1
else
return 0
end
end