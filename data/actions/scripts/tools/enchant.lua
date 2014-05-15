local portals =
{
    [7801] = {position = {x = 427, y = 503, z = 7}, vocations = {2, 6}, level = 30, premium = true, str = "Druids"}, 
    [7802] = {position = {x = 424, y = 503, z = 7}, vocations = {2, 6}, level = 30, premium = true, str = "Druids"}, 
    [7803] = {position = {x = 424, y = 505, z = 7}, vocations = {1, 5}, level = 30, premium = true, str = "Sorcerers"}, 
    [7804] = {position = {x = 427, y = 505, z = 7}, vocations = {1, 5}, level = 30, premium = true, str = "Sorcerers"}
}

function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
    if(getPlayerLookDir(cid) == 0) then
        newdir = 2
    elseif(getPlayerLookDir(cid) == 1) then
        newdir = 3
    elseif(getPlayerLookDir(cid) == 2) then
        newdir = 0
    else
        newdir = 1
    end
    local portal = portals[item.actionid]
    if(portal) then
        if(isPremium(cid) and portal.premium and isInArray(portal.vocations, getPlayerVocation(cid)) and getPlayerLevel(cid) >= portal.level) then
            doTeleportThing(cid, portal.position)
            doSendMagicEffect(portal.position, CONST_ME_TELEPORT)
        else
            doCreatureSay(cid, "Only Premium " .. portal.str .. " of level " .. portal.level .. " or higher are able to enter this portal", TALKTYPE_ORANGE_1, fromPosition)
            doMoveCreature(cid, newdir)
        end
    end
    return true
end