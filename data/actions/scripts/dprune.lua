function onUse(cid, item, frompos, item2, topos)
    if (not getTileInfo(getThingPosition(cid)).protection) then -- Checks if player is in Protection Zone, if not, the rune does not work.
        return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You can't use this scroll outside of PZ.") and false
    end
 
    local storage, rune = 89523, 12427 -- (Storage ID - 89524 and 89525 need to be available.), RUNE ID
    local p = {
        getPlayerStorageValue(cid, storage),
        getPlayerStorageValue(cid, storage+1), 
        getPlayerStorageValue(cid, storage+2)
    } -- This is an array, used to index more than one value to a single variable.
 
    if (p[1] > -1 and p[2] > -1) then -- To call the first value in the variable 'p', you must specify the index number, p[INDEX_#]
        if (getPlayerItemCount(cid, rune) > 0) then
            doTeleportThing(cid, {x=p[1], y=p[2], z=p[3]})
            doSendMagicEffect({x=p[1], y=p[2], z=p[3]}, CONST_ME_TELEPORT)
            for i = storage, storage+2 do -- this is a loop, sets the storage value back to -1, once it is used.
                setPlayerStorageValue(cid, i, -1)
            end
        end
    else
        doPlayerSendCancel(cid,"You must die first to use this scroll.")
    end
return true
end