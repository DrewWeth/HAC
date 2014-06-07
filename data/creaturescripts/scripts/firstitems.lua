function onLogin(cid)
	local storage = 30054 -- storage value
	local rand = math.random(60, 70)

	if (getPlayerStorageValue(cid, storage) ~= 1) then
		setPlayerStorageValue(cid, storage, 1)

		local bp = doPlayerAddItem(cid,1988,1)
		doAddContainerItem(bp, 2148,rand)
		doAddContainerItem(bp, 12427,1)
		doAddContainerItem(bp, 2674,10)
		doAddContainerItem(bp, 2649,1)
		doAddContainerItem(bp, 2120,1)
		doAddContainerItem(bp, 2554,1)
	end
	return true
end
