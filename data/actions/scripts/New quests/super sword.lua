function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,3004) == -1 then
doPlayerAddItem(cid,7390)
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"congrats")
setPlayerStorageValue(cid,3004,1)
doSendMagicEffect(getPlayerPosition(cid),28)
else
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"empty")
end
return 1
end
