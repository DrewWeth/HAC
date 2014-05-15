function onUse(cid, item, frompos, item2, topos)


	if item.uid == 64134 then
		if getPlayerStorageValue(cid,64134) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a 6 rubies.")
			doPlayerAddItem(cid,2147,6)
			setPlayerStorageValue(cid,64134,1)
		else
			doPlayerSendTextMessage(cid,25,"This hole is empty. You've already done this quest!")
		end
	
	end
	return TRUE
end