function onUse(cid, item, frompos, item2, topos)

	if item.uid == 60066 then
		if getPlayerStorageValue(cid,60066) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a Medusa Shield.")
			doPlayerAddItem(cid,2536,1)
			setPlayerStorageValue(cid,60066,1)
		else
			doPlayerSendTextMessage(cid,25,"The is empty.")
		end

	elseif item.uid == 60067 then
		if getPlayerStorageValue(cid,60067) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a Skull Staff.")
			doPlayerAddItem(cid,2436,1)
			setPlayerStorageValue(cid,60067,1)
		else
			doPlayerSendTextMessage(cid,25,"The is empty.")
		end

	elseif item.uid == 60068 then
		if getPlayerStorageValue(cid,60068) == -1 then
			doPlayerSendTextMessage(cid,25,"You have found a Blue Robe.")
			doPlayerAddItem(cid,2656,1)
			setPlayerStorageValue(cid,60068,1)
		else
			doPlayerSendTextMessage(cid,25,"The is empty.")

		end	
	end
	return TRUE
end