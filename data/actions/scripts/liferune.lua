function onUse(cid, item, fromPosition, itemEx, toPosition)
    local hpmax = getCreatureMaxHealth(cid)
    local hp_add = (hpmax * 0.07) 
    local storage = 1000
    local time = 1
 
    if exhaustion.check(cid, storage) then    
        doSendMagicEffect(getThingPos(itemEx.uid), CONST_ME_POFF)     
        return doPlayerSendCancel(cid, "You are exhausted")
    end
    doCreatureAddHealth(cid, hp_add)
    doSendMagicEffect(getThingPos(itemEx.uid), CONST_ME_MAGIC_BLUE)
    exhaustion.set(cid, storage, time)
    doSendAnimatedText(getPlayerPosition(cid),""..hp_add.."", TEXTCOLOR_RED)
    return TRUE
end