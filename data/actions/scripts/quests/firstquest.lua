function onUse(cid, item, frompos, item2, topos)

	if item.uid == 5524 then
		if getPlayerStorageValue(cid,5524) == -1 then
			local bp = doPlayerAddItem(cid,10521,1)
			doAddContainerItem(bp,2656,1) 
			doAddContainerItem(bp,2789,100) 
			doAddContainerItem(bp,10511,1) 
			doAddContainerItem(bp,10513,1)
			doAddContainerItem(bp,10515,1) 
			doAddContainerItem(bp,2457,1)
			doAddContainerItem(bp,2190,1)
			doAddContainerItem(bp,2182,1)
			doAddContainerItem(bp,2409,1)
			doAddContainerItem(bp,2430,1)
                        doAddContainerItem(bp,2389,1)
                        doAddContainerItem(bp,2647,1)
                        doAddContainerItem(bp,2525,1)
			doAddContainerItem(bp,2160,3)
			doAddContainerItem(bp,6119,1)
			doAddContainerItem(bp,2647,1)
			doAddContainerItem(bp,2643,1)
			doAddContainerItem(bp,7620,1)
			doAddContainerItem(bp,7618,1)
			setPlayerStorageValue(cid,5524,1)
			doPlayerSendTextMessage(cid,25,'You have found a backpack.')
	elseif getPlayerStorageValue(cid,5524) == 1 then
		doPlayerSendTextMessage(cid,25,'It is empty.')
end
return 1
else
return 0
end
end