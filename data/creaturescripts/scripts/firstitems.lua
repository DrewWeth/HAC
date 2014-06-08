function onLogin(cid)
	local storage = 30056 -- storage value
	
	local sorcItems = {
			8820, -- mage hat
			8819, -- magician's robe
			2190, -- Wand of vortex
			2175, -- norse shield
			2643, -- leather boots
			1988 -- backpack
		}
	local druidItems = {
			8820, -- mage hat
			8819, -- magician's robe
			2175, -- norse shield
			2182, -- Snakebite rod
			2643, -- leather boots
			1988 -- backpack
		}
	local pallyItems = {
			2460, -- brass helmet
			2660, -- pally start arm
			2456, -- Bow
			2643, -- leather boots
			2175, -- norse shield
			1988 -- backpack
		}
	local kinaItems = {
			2460, -- brass helmet
			2465, -- brass armor
			2175, -- norse shield
			2643, -- leather boots
			1988, -- backpack
			8602, -- jagged sword
		}
	
	if getPlayerStorageValue(cid, storage) == -1 then
		setPlayerStorageValue(cid, storage, 1)
 
		if (getPlayerVocation(cid)==3 and getPlayerGroupId(cid)<3) then
			setCreatureMaxMana(cid, 200)
			doCreatureAddMana(cid, 200)
		elseif (getPlayerVocation(cid)==4 and getPlayerGroupId(cid)<3) then
			setCreatureMaxMana(cid, 0)
			doCreatureAddMana(cid, getCreatureMana(cid))
		end


		if getPlayerVocation(cid) == 1 then
			-- Sorcerer
			for i = 1, table.getn(sorcItems), 1 do
				doPlayerAddItem(cid, sorcItems[i], 1, FALSE)
			end
		
		elseif getPlayerVocation(cid) == 2 then
			-- Druid
			for i = 1, table.getn(druidItems), 1 do
				doPlayerAddItem(cid, druidItems[i], 1, FALSE)
			end
		
		elseif getPlayerVocation(cid) == 3 then
			-- Paladin
			for i = 1, table.getn(pallyItems), 1 do
				doPlayerAddItem(cid, pallyItems[i], 1, FALSE)
			end
			-- 8 arrows
			doPlayerAddItem(cid, 2389, 5, FALSE)
		
		elseif getPlayerVocation(cid) == 4 then
			-- Knight
			for i = 1, table.getn(kinaItems), 1 do
				doPlayerAddItem(cid, kinaItems[i], 1, FALSE)
			end
		end
		
		-- Common for all
		doPlayerAddItem(cid, 2789, 5, FALSE)
		doPlayerAddItem(cid, 2152, 10, FALSE)
		doPlayerAddItem(cid, 7618, 15, FALSE)
		doPlayerSetTown(cid,1) -- first login change vocation
	end
	return true
end
