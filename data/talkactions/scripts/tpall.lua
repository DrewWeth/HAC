function onSay(cid, words, param, channel) 
local temple = { x = 2000, y = 2000, z = 7 } 
for _, cid in ipairs(getPlayersOnline()) do 
doTeleportThing(cid, temple)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "All players have been teleported to the temple.")
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_GIFT_WRAPS) 
end
return TRUE
end