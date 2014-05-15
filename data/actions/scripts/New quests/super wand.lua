function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,3009) == -1 then
doPlayerAddItem(cid,7958)
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"congrats")
setPlayerStorageValue(cid,3009,1)
doSendMagicEffect(getPlayerPosition(cid),28)
else
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"empty")
end
return 1
end
