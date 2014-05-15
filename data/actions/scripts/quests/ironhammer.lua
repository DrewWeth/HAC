function onUse(cid, item, frompos, item2, topos)


	if item.uid == 60069 then
		if getPlayerStorageValue(cid,60069) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a iron hammer.")
			doPlayerAddItem(cid,2422,1)
			setPlayerStorageValue(cid,60069,1)
		else
			doPlayerSendTextMessage(cid,25,"The chest is empty.")
		end
	
	end
	return TRUE
end