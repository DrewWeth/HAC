function onUse(cid, var)
local dir = getPlayerLookDir(cid)
local pos = getPlayerPosition(cid)
local time = 1 -- Time of exhaustion (in seconds)
local exhaustionStorage = 2555 -- Storage value for exhastion
    if (getTileInfo(getThingPosition(cid)).protection) then -- Checks if player is in Protection Zone, if not, the rune does not work.
        return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You can't use this scroll in PZ.") and false
    end
if(dir==1)then
	pos.x = pos.x + 1
elseif(dir==2)then
	pos.y = pos.y + 1
elseif(dir==3)then
	pos.x = pos.x - 1
elseif(dir==0)then
	pos.y = pos.y - 1
elseif(dir==0)then
	pos.y = pos.x - 1
elseif(dir==0)then
	pos.x = pos.y - 1
elseif(dir==0)then
	pos.y = pos.x + 1
elseif(dir==0)then
	pos.x = pos.y + 1
end
 if not(exhaustion.check(cid,exhaustionStorage)) then
          exhaustion.set(cid,exhaustionStorage,time)
	doCreateMonster("Morde", pos)
	return True
					  else
					          doPlayerSendCancel(cid, "Can't drink any more water for now.")
return false
end
end
