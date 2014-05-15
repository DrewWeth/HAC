function onUse(cid, item, frompos, item2, topos)
    if getPlayerSex(cid) == 1 then
            doPlayerAddOutfit(cid, 335, 3)
            doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FIREAREA)
            doRemoveItem(item.uid, 1)            
    elseif getPlayerSex(cid) == 0 then 
            doPlayerAddOutfit(cid, 336, 3)
            doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FIREAREA)
            doRemoveItem(item.uid, 1)
    end
end 