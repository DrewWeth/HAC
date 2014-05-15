function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,3013) == -1 then
doPlayerAddItem(cid,7902)
doPlayerAddItem(cid,7897)
doPlayerAddItem(cid,7896)
doPlayerAddItem(cid,7892)
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"congrats")
setPlayerStorageValue(cid,3013,1)
doSendMagicEffect(getPlayerPosition(cid),28)
else
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"empty")
end
return 1
end
