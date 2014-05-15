function onUse(cid, item, frompos, item2, topos)

	if item.uid == 60064 then
		if getPlayerStorageValue(cid,60064) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found the hat of the mad.")
			doPlayerAddItem(cid,2323,1)
			setPlayerStorageValue(cid,60064,1)
		else
			doPlayerSendTextMessage(cid,25,"The is empty.")
		end

	elseif item.uid == 60065 then
		if getPlayerStorageValue(cid,60065) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a bag.")
			local bag = doPlayerAddItem(cid,1987,1)
			doAddContainerItem(bag,2197,1)
			doAddContainerItem(bag,2131,1)
			setPlayerStorageValue(cid,60065,1)
		else
			doPlayerSendTextMessage(cid,25,"It is empty.")
		end	
	end
	return TRUE
end