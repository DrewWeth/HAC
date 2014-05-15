function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,3002) == -1 then
doPlayerAddItem(cid,9778)
doPlayerAddItem(cid,9776)
doPlayerAddItem(cid,9777)
doPlayerAddItem(cid,2646)
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"congrats")
setPlayerStorageValue(cid,3002,1)
doSendMagicEffect(getPlayerPosition(cid),28)
else
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"empty")
end
return 1
end
