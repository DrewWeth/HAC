function onUse(cid, item, frompos, item2, topos)

	if item.uid == 60016 then
		if getPlayerStorageValue(cid,60016) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a Crown Armor.")
			doPlayerAddItem(cid,2487,1)
			setPlayerStorageValue(cid,60016,1)
		else
			doPlayerSendTextMessage(cid,25,"The is empty.")
		end

	elseif item.uid == 60015 then
		if getPlayerStorageValue(cid,60015) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a Crown Shield.")
			doPlayerAddItem(cid,2519,1)
			setPlayerStorageValue(cid,60015,1)
		else
			doPlayerSendTextMessage(cid,25,"The is empty.")

		end	
	end
	return TRUE
end