function onLogin(cid)
	local storage = 30055 -- storage value
	
	local sorcItems = {
			8820, -- mage hat
			8819, -- magician's robe
			2190, -- Wand of vortex
			7460, -- norse shield
			2648, -- chain legs
			2643, -- leather boots
			1988 -- backpack
		}
	local druidItems = {
			8820, -- mage hat
			8819, -- magician's robe
			7460, -- norse shield
			2182, -- Snakebite rod
			2648, -- chain legs
			2643, -- leather boots
			1988 -- backpack
		}
	local pallyItems = {
			2460, -- brass helmet
			2648, -- chain legs
			2660, -- pally start arm
			2456, -- Bow
			2643, -- leather boots
			7460, -- norse shield
			1988 -- backpack
		}
	local kinaItems = {
			2460, -- brass helmet
			2465, -- brass armor
			7460, -- norse shield
			2648, -- chain legs
			2643, -- leather boots
			1988, -- backpack
			2412, -- Katana
			2441, -- darm axe
			2439 -- darm mace
		}
	
	if getPlayerStorageValue(cid, storage) == -1 then
		setPlayerStorageValue(cid, storage, 1)
 
		if (getPlayerVocation(cid)==3 and getPlayerGroupId(cid)<3) then
			setCreatureMaxMana(cid, 200)
			doCreatureAddMana(cid, 200)
		elseif (getPlayerVocation(cid)==4 and getPlayerGroupId(cid)<3) then
			setCreatureMaxMana(cid, 0)
			doCreatureAddMana(cid, -40)
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
			doPlayerAddItem(cid, 2544, 8, FALSE)
		
		elseif getPlayerVocation(cid) == 4 then
			-- Knight
			for i = 1, table.getn(kinaItems), 1 do
				doPlayerAddItem(cid, kinaItems[i], 1, FALSE)
			end
		end
		
		-- Common for all
		doPlayerAddItem(cid, 2152, 25, FALSE) -- 25 plat coins
		doPlayerAddItem(cid, 2173, 1, FALSE) -- aol
		doPlayerAddItem(cid, 12427, 1, FALSE) -- death scroll
		
	end
	return true
end
