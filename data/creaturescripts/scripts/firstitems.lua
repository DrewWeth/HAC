function onLogin(cid)
	local storage = 30055 -- storage value
	
	if getPlayerStorageValue(cid, storage) == -1 then
		setPlayerStorageValue(cid, storage, 1)
	
		-- Common for all
	doPlayerAddItem(cid, 2148, 65, FALSE) -- gold
	doPlayerAddItem(cid, 12427, 1, FALSE) -- death scroll
	doPlayerAddItem(cid, 2674, 10, FALSE) -- apples 
	doPlayerAddItem(cid, 2649, 1 FALSE) -- leather legs 
	doPlayerAddItem(cid, 2120, 1, FALSE) -- rope
	doPlayerAddItem(cid, 2554, 1, FALSE) -- shovel
	
		
	end
	return true
end
