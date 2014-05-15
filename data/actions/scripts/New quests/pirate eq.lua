function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,3001) == -1 then
doPlayerAddItem(cid,6096)
doPlayerAddItem(cid,6095)
doPlayerAddItem(cid,5918)
doPlayerAddItem(cid,5462)
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"congrats")
setPlayerStorageValue(cid,3001,1)
doSendMagicEffect(getPlayerPosition(cid),28)
else
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"empty")
end
return 1
end
