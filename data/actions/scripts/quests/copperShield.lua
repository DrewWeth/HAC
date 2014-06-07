function onUse(cid, item, frompos, item2, topos)
var item = 2530 -- copper shield
	if item.uid == 60646 then
		if getPlayerStorageValue(cid,item) != 1 then
			local bp = doPlayerAddItem(cid,1987,1)
			doAddContainerItem(bp,item,1) 
			setPlayerStorageValue(cid,item,1)
			doPlayerSendTextMessage(cid,25,'You have found a bag')
		elseif getPlayerStorageValue(cid,item) == 1 then
			doPlayerSendTextMessage(cid,25,'It is empty.')
		end
		return 1
	else
	return 0
	end
end