function onDeath(cid, corpse, killer)
local storage = 89523
local playerPos = getPlayerPosition(cid)
setPlayerStorageValue(cid, storage, playerPos.x)
setPlayerStorageValue(cid, storage+1, playerPos.y)
setPlayerStorageValue(cid, storage+2, playerPos.z)
return TRUE
end