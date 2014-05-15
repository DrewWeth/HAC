function onUse(cid, item, frompos, item2, topos)

	if item.uid == 9015 then
		if getPlayerStorageValue(cid,9015) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a crystal coin.")
			doPlayerAddItem(cid,2160,1)
			setPlayerStorageValue(cid,9015,1)
		else
			doPlayerSendTextMessage(cid,25,"The is empty.")
		end
		
	elseif item.uid == 9014 then
		if getPlayerStorageValue(cid,9014) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a bag.")
			local bag = doPlayerAddItem(cid,1991,1)
			doAddContainerItem(bag,2200,1)
			doAddContainerItem(bag,2214,1)
			doAddContainerItem(bag,2162,1)
			doAddContainerItem(bag,2193,1)
			setPlayerStorageValue(cid,9014,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end	
	end
	return TRUE
end