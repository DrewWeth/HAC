function onUse(cid, item, fromPosition, itemEx, toPosition)
        if item.itemid == 6390 then
            local pPos = getPlayerPosition(cid)
            doSendMagicEffect(pPos, 50)
                doPlayerAddMount(cid, 4)
						doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You Have Purchased The Black Sheep Mount!")
        end
        return TRUE
end