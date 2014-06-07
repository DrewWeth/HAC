function onUse(cid, item, frompos, item2, topos)

	if item.uid == 60076 then
		if getPlayerStorageValue(cid,60076) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a bag.")
			local bag = doPlayerAddItem(cid,1987,1)
			doAddContainerItem(bag,2143,10)
			setPlayerStorageValue(cid,60076,1)
		else
			doPlayerSendTextMessage(cid,25,"The box is empty.")
		end

	elseif item.uid == 60077 then
		if getPlayerStorageValue(cid,60077) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a bag.")
			local bag = doPlayerAddItem(cid,1987,1)
			doAddContainerItem(bag,2129,1)
			doAddContainerItem(bag,2213,1)
			setPlayerStorageValue(cid,60077,1)
		else
			doPlayerSendTextMessage(cid,25,"It box is empty.")
		end	
		
	elseif item.uid == 60078 then
		if getPlayerStorageValue(cid,60078) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a bag.")
			local bag = doPlayerAddItem(cid,1987,1)
			doAddContainerItem(bag,2152,10)
			doAddContainerItem(bag,2125,1)
			doAddContainerItem(bag,2144,2)
			setPlayerStorageValue(cid,60078,1)
		else
			doPlayerSendTextMessage(cid,25,"The chest is empty.")
		end
	
	end
	return TRUE
end