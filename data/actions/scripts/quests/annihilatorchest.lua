function onUse(cid, item, fromPosition, itemEx, toPosition)
   	if item.uid == 30336 then
		queststatus = getPlayerStorageValue(cid,30338)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a stonecutter axe.")
   			doPlayerAddItem(cid,2431,1)
   			setPlayerStorageValue(cid,30338,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 30337 then
		queststatus = getPlayerStorageValue(cid,30338)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a thunder hammer.")
   			doPlayerAddItem(cid,2421,1)
   			setPlayerStorageValue(cid,30338,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 30338 then
		queststatus = getPlayerStorageValue(cid,30338)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a demon armor.")
   			doPlayerAddItem(cid,2494,1)
   			setPlayerStorageValue(cid,30338,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
		end
   	elseif item.uid == 30339 then
		queststatus = getPlayerStorageValue(cid,30338)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a magic sword.")
   			doPlayerAddItem(cid,2400,1)
   			setPlayerStorageValue(cid,30338,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
        end
   	return 1
end