function onUse(cid, item, frompos, item2, topos)


	if item.uid == 50020 then
		if getPlayerStorageValue(cid,50020) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a dragon lance.")
			doPlayerAddItem(cid,2414,1)
			setPlayerStorageValue(cid,50020,1)
		else
			doPlayerSendTextMessage(cid,25,"This chest is empty. You've already done this quest!")
		end
	
	end
	return TRUE
end