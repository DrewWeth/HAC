function getPlayersInRange(position, radiusx, radiusy)
	local creaturesList = {}
	for x = -radiusx, radiusx do
		for y = -radiusy, radiusy do
			if not (x == 0 and y == 0) then
				local creature = getTopCreature({x = position.x+x, y = position.y+y, z = position.z})
				if creature.type == 1 then
					table.insert(creaturesList, creature.uid)
				end
			end
		end
	end

	local creature = getTopCreature(position)
	if creature.type == 1 then
		if not(table.find(creaturesList, creature.uid)) then
			table.insert(creaturesList, creature.uid)
		end
	end
    return creaturesList
end

local t, n, storage = {
	{x=496, y=537, z=9},
	{x=497, y=537, z=9},
	{x=498, y=537, z=9},
	{x=499, y=537, z=9}
}, {
	{x=490, y=495, z=9},
	{x=504, y=505, z=9},
	{x=504, y=495, z=9},
	{x=490, y=505, z=9}
}, {
	placed = 10001,
	max = 10002,
	radius = 10003
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.itemid == 1946 then
		return doTransformItem(item.uid, item.itemid - 1)
	end

	local v = getPlayersInRange({x=497, y=500, z=9}, 7, 5)
	if #v > 0 then
		return doPlayerSendCancel(cid, "Please wait for the current match to end.")
	end

	local players = {}
	for i = 1, #t do
		local v = getTopCreature(t[i]).uid 
		players[i] = isPlayer(v) and v or nil
	end

	if #players < 2 then
		return doPlayerSendCancel(cid, "You need at least 2 players to enter.")
	end
	
	local first = players[1] and 1 or players[2] and 2 or players[3] and 3 or players[4] and 4
	for i = 1, 4 do
		if players[i] then
			setPlayerStorageValue(players[i], storage.placed, 0)
			setPlayerStorageValue(players[i], storage.max, 1)
			setPlayerStorageValue(players[i], storage.radius, 1)
			doSendMagicEffect(t[i], CONST_ME_TELEPORT)
			doTeleportThing(players[i], n[i])
			doSendMagicEffect(n[i], CONST_ME_TELEPORT)
		end
	end

	doTransformItem(item.uid, item.itemid + 1)
	return true
end