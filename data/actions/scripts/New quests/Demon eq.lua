function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,3000) == -1 then
doPlayerAddItem(cid,2493)
doPlayerAddItem(cid,2494)
doPlayerAddItem(cid,2495)
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"congrats")
setPlayerStorageValue(cid,3000,1)
doSendMagicEffect(getPlayerPosition(cid),28)
else
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"empty")
end
return 1
end
