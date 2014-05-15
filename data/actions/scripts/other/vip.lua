-- Credits StreamSide, Empty and Kaorus
function onUse(cid, item, fromPosition, itemEx, toPosition)
local name = getCreatureName(cid)
    -- if getPlayerStorageValue(cid,11551) < 1 then
        if getPlayerLevel(cid) > 1 then
            getPlayerStorageValue(cid, 11551)
            doSendAnimatedText(getPlayerPosition(cid), "Welcome!", TEXTCOLOR_RED) 
            doCreatureSay(cid, "CONGRATULATIONS! You are now a VIP forever! You can now enter the VIP-area and use unique features!. ", TALKTYPE_ORANGE_1)
            doBroadcastMessage("CONGRATULATIONS " ..  name .. "! Now you are VIP forever! Now you can enter the VIP-area and use unique features!")
            setPlayerStorageValue(cid, 11551, (getPlayerStorageValue(cid,11551) + 1000000))
            doRemoveItem(item.uid, 1)
        else
            doPlayerSendCancel(cid,"You are already a donator.")
            doRemoveItem(item.uid, 1)
        end   
return TRUE
end