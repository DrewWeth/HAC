function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2430 then
		if getPlayerStorageValue(cid,2430) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a Knight Axe.")
			doPlayerAddItem(cid,2430,1)
			setPlayerStorageValue(cid,2430,1)
		else
			doPlayerSendTextMessage(cid,25,"The chest is empty.")
		end

	elseif item.uid == 2392 then
		if getPlayerStorageValue(cid,2392) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a Fire Sword.")
			doPlayerAddItem(cid,2392,1)
			setPlayerStorageValue(cid,2392,1)
		else
			doPlayerSendTextMessage(cid,25,"The is empty.")
		end

	elseif item.uid == 2476 then
		if getPlayerStorageValue(cid,2476) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a Knight Armor.")
			doPlayerAddItem(cid,2476,1)
			setPlayerStorageValue(cid,2476,1)
		else
			doPlayerSendTextMessage(cid,25,"The is empty.")
		end
	end
	return TRUE
end