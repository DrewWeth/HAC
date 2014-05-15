local coin = 2157
local lever = {
[13245] = {10,2574}

}
function onUse(cid,item,fromPosition,itemEx,toPosition)
                  if doPlayerRemoveItem(cid,coin,lever[item.actionid][1]) == FALSE then
                  return doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "you need "..lever[item.actionid][1].." " ..getItemNameById(coin))
                  end
                                doPlayerAddItem(cid,lever[item.actionid][2])
                                doPlayerSendTextMessage(cid,22,"you bought one " .. getItemNameById(lever[item.actionid][2]))
                                doSendMagicEffect(getCreaturePosition(cid), math.random(28,30))
                return true
end