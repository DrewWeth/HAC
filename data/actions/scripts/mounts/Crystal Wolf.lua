function onUse(cid, item, fromPosition, itemEx, toPosition)
        if item.itemid == 6390 then
            local pPos = getPlayerPosition(cid)
            doSendMagicEffect(pPos, 50)
                doPlayerAddMount(cid, 16)
						doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You Have Purchased The Crystal Wolf Mount!")
        end
        return TRUE
end