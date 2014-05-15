local t = {
	from = {x=1826, y=1900, z=7},
	to = {x=1852, y=1922, z=7},
	storage = {
		max = 10002,
		radius = 10003
	}
}
function onStepIn(cid, item, pos, fromPos)
	if isInRange(pos, t.from, t.to) then
		if item.itemid == 8304 then
			local n = getPlayerStorageValue(cid, t.storage.max)
			if n < 3 then
				setPlayerStorageValue(cid, t.storage.max, n + 1)
				doRemoveItem(item.uid)
				doSendMagicEffect(pos, CONST_ME_FIREATTACK)
			end
		elseif item.itemid == 8302 then
			local n = getPlayerSlotItem(cid, CONST_SLOT_FEET)
			if n.itemid ~= 2155 then
				doPlayerAddItem(cid, 2050, 1)
				doPlayerAddItem(cid, 2050, 1)
				doPlayerAddItem(cid, 2050, 1)
				doDecayItem(doPlayerAddItem(cid, 2155, 1))
				doPlayerRemoveItem(cid, 2050, 1)
				doPlayerRemoveItem(cid, 2050, 1)
				doPlayerRemoveItem(cid, 2050, 1)
				doRemoveItem(item.uid)
				doSendMagicEffect(pos, CONST_ME_ENERGYHIT)
			end
		elseif item.itemid == 8310 then
			local n = getPlayerStorageValue(cid, t.storage.radius)
			if n < 4 then
				setPlayerStorageValue(cid, t.storage.radius, n + 1)
				doRemoveItem(item.uid)
				doSendMagicEffect(pos, CONST_ME_GROUNDSHAKER)
			end
		end
	end
end