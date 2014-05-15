function onUse(cid, item, frompos, item2, topos)

local pausa = 1000

local door = {x=2004, y=1989, z=6, stackpos=1}
local ddoor = getThingfromPos(door)

local open_door = 3539

local itemU = 2091

local verify = 0 

if item2.uid == itemU then
if ddoor.itemid ~= verify then
doTransformItem(ddoor.uid,open_door)
addEvent(close,pausa,door)
end
else
doPlayerSendCancel(cid,"This key can not be used here")
end
return 1
end

function close(door)

local to_close_door = 3538

local the_close_door = getThingfromPos(door)
doTransformItem(the_close_door.uid,to_close_door)
end