local config = {
                timeToStart = 5, -- Time for the player to start 'driving' after using the switch
                startPos = {x=84, y=132, z=7}, -- Start race position
                startMsg = "Dont hit the walls: 3, 2, 1, RACE!", -- Message when the race starts
                startLookDirection = SOUTH, -- Look Direction when the race starts
                changeLookType = "yes", -- Change looktype of the player?
                itemIDLookType = 9937, -- Item ID of how the player should look like
                speed = 200, -- Speed
                failItems = {9119, 9118, 9120, 9124}, -- 'Driving' into these items makes the player lose
                failMsg = "You crashed and lost the race!", -- Message if he loses
                winningItems = {5785, 7890}, -- The items the player should 'drive' into to win
                winningMsg = "You won the race!", -- Message if the player wins
                rewardRoomPos = {x=113, y=126, z=7} -- Position of the reward room
                }

local function race(cid)
local dir, pos = getCreatureLookDirection(cid), getThingPos(cid)
local newPos = {x=(dir == 1 and pos.x+1 or dir == 3 and pos.x-1 or pos.x), y=(dir == 0 and pos.y-1 or dir == 2 and pos.y+1 or pos.y), z=pos.z, stackpos=1}

        if not isInArray(config.winningItems, getThingFromPos(newPos).itemid) then
                if not isInArray(config.failItems, getThingFromPos(newPos).itemid) then
                        doSendMagicEffect(getThingPos(cid), CONST_ME_POFF)
                        doTeleportThing(cid, newPos)
                        addEvent(race, config.speed, cid)
                else
                        doSendMagicEffect(getThingPos(cid), 6)
                        doRemoveConditions(cid, false)
                        doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
                        doSendMagicEffect(getThingPos(cid), CONST_ME_TELEPORT)
                        doPlayerSendTextMessage(cid, 19, config.failMsg)
                        doCreatureSetNoMove(cid, 0)
                end
        end
        
        if isInArray(config.winningItems, getThingFromPos(newPos).itemid) then
                doTeleportThing(cid, config.rewardRoomPos)
                doSendMagicEffect(getThingPos(cid), CONST_ME_TELEPORT)
                doPlayerSendTextMessage(cid, 22, config.winningMsg)
                doRemoveConditions(cid, false)
                doCreatureSetNoMove(cid, 0)
        end
return true
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
local dir = getCreatureLookDirection(cid)
        doTeleportThing(cid, config.startPos)
        doSendMagicEffect(getThingPos(cid), CONST_ME_TELEPORT)
        doPlayerSendTextMessage(cid, 22, config.startMsg)
        doCreatureSetNoMove(cid, 1)
        doCreatureSetLookDirection(cid, config.startLookDirection)
        doSetItemOutfit(cid, config.changeLookType == "yes" and config.itemIDLookType or 0, -1)
        addEvent(race, config.timeToStart*1000, cid)
return true
end