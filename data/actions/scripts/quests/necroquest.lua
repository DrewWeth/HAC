function onUse(cid, item, frompos, item2, topos)

	if item.uid == 60066 then
		if getPlayerStorageValue(cid,60066) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a bag.")
			local bp = doPlayerAddItem(cid,1987,1)
			doAddContainerItem(cid,2536,1)
			doAddContainerItem(cid,2436,1)
			doAddContainerItem(cid,2656,1)
			setPlayerStorageValue(cid,60066,1)
		else
			doPlayerSendTextMessage(cid,25,"The is empty.")
		end

	end
	return TRUE
end