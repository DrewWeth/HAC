function onUse(cid, item, fromPosition, itemEx, toPosition)
        if item.itemid == 6390 then
            local pPos = getPlayerPosition(cid)
            doSendMagicEffect(pPos, 50)
                doPlayerAddMount(cid, 22)
						doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You Have Purchased The Brown n White Rented Horse Mount!")
        end
        return TRUE
end