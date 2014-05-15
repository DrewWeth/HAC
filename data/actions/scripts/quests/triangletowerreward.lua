function onUse(cid, item, frompos, item2, topos)

	if item.uid == 60075 then
		if getPlayerStorageValue(cid,60075) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a bag.")
			local bag = doPlayerAddItem(cid,1987,1)
			doAddContainerItem(bag,2199,1)
			doAddContainerItem(bag,2213,1)
			doAddContainerItem(bag,2146,2)
			setPlayerStorageValue(cid,60075,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end	
	end
	return TRUE
end