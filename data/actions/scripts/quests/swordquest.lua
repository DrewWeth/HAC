function onUse(cid, item, fromPosition, itemEx, toPosition)
   	if item.uid == 10007 then
		queststatus = getPlayerStorageValue(cid,30339)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a blessed sceptre .")
   			doPlayerAddItem(cid,7429,1)
   			setPlayerStorageValue(cid,30339,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 10008 then
		queststatus = getPlayerStorageValue(cid,30339)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Royal Axe.")
   			doPlayerAddItem(cid,7434,1)
   			setPlayerStorageValue(cid,30339,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 10009 then
		queststatus = getPlayerStorageValue(cid,30339)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a justice seeker.")
   			doPlayerAddItem(cid,7390,1)
   			setPlayerStorageValue(cid,30339,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
        end
   	return 1
end