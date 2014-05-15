function onUse(cid, item, frompos, item2, topos)
local stonepos = {x=836, y=1004, z=7, stackpos=1}
local getgate = getThingfromPos(stonepos)
local stoneID = 1304

if item.itemid == 1945 and getgate.itemid == stoneID then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.itemid == 1946
and getgate.itemid == 0 then
doCreateItem(stoneID,1,stonepos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
return true
end 