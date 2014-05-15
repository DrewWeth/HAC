local coin = 2160
local lever = {
[7000] = {1,2268},
[7001] = {1,2278},
[7002] = {1,2293},
[7003] = {1,2305},
[7004] = {1,2313},
[7005] = {1,2273},
[7006] = {1,2261},
[7007] = {1,2276},
[7008] = {1,2173}

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