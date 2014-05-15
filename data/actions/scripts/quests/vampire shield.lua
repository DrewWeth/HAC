function onUse(cid, item, frompos, item2, topos)


	if item.uid == 50019 then
		if getPlayerStorageValue(cid,50019) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a vampire shield.")
			doPlayerAddItem(cid,2534,1)
			setPlayerStorageValue(cid,50019,1)
		else
			doPlayerSendTextMessage(cid,25,"This chest is empty. You've already done this quest!")
		end
	
	end
	return TRUE
end