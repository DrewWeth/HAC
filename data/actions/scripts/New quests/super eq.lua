function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,3012) == -1 then
doPlayerAddItem(cid,7903)
doPlayerAddItem(cid,7884)
doPlayerAddItem(cid,7885)
doPlayerAddItem(cid,7886)
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"congrats")
setPlayerStorageValue(cid,3012,1)
doSendMagicEffect(getPlayerPosition(cid),28)
else
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"empty")
end
return 1
end
