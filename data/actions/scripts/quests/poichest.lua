function onUse(cid, item, frompos, item2, topos)

	if item.uid == 4570 then
		if getPlayerStorageValue(cid,4570) == -1 then
			local bp = doPlayerAddItem(cid,2365,1)
			doAddContainerItem(bp,2640,1) 
			doAddContainerItem(bp,2311,140)
			doAddContainerItem(bp,2268,125)
			doAddContainerItem(bp,2273,130)
			doAddContainerItem(bp,5791,1)
			doAddContainerItem(bp,8976,1)
			doAddContainerItem(bp,11233,1)
			setPlayerStorageValue(cid,4570,1)
			doPlayerSendTextMessage(cid,25,'You have found a backpack.')
	elseif getPlayerStorageValue(cid,4570) == 1 then
		doPlayerSendTextMessage(cid,25,'It is empty.')
end
return 1
else
return 0
end
end