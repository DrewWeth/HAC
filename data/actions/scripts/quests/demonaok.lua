function onUse(cid, item, fromPosition, itemEx, toPosition)
   	if item.uid == 10020 then
		queststatus = getPlayerStorageValue(cid,30340)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Demon Legs .")
   			doPlayerAddItem(cid,2495,1)
   			setPlayerStorageValue(cid,30340,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
   	elseif item.uid == 10021 then
		queststatus = getPlayerStorageValue(cid,30340)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Blessed Shield.")
   			doPlayerAddItem(cid,2523,1)
   			setPlayerStorageValue(cid,30340,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
   		end
        end
   	return 1
end