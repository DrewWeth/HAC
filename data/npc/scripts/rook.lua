 
 
local focuses = {}
local function isFocused(cid)
	for i, v in pairs(focuses) do
		if(v == cid) then
			return true
		end
	end
	return false
end
 
local function addFocus(cid)
	if(not isFocused(cid)) then
		table.insert(focuses, cid)
	end
end
local function removeFocus(cid)
	for i, v in pairs(focuses) do
		if(v == cid) then
			table.remove(focuses, i)
			break
		end
	end
end
local function lookAtFocus()
	for i, v in pairs(focuses) do
		if(isPlayer(v)) then
			doNpcSetCreatureFocus(v)
			return
		end
	end
	doNpcSetCreatureFocus(0)
end
 
function onCreatureDisappear(cid)
	if(isFocused(cid)) then
		selfSay("Goodbye.")
		removeFocus(cid)
	end
end


function giveItems(cid)
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
	end
	return true
end
 
function onCreatureSay(cid, type, msg)
	rebirthLevel = 8
	if((msg == "hi" or msg == "hello" or msg == "hey")  and not (isFocused(cid))) then
		selfSay("Hello.", cid);
		selfSay("Welcome, ".. getCreatureName(cid) ..", to the tutorial island! You may {leave} here forever at level 8 by talking to me. If you stay past ", cid)
		addFocus(cid)
		status = 1
	elseif((isFocused(cid)) and (msg == "leave") and (status == 1)) then
		if (getPlayerLevel(cid) >= rebirthLevel) then
				selfSay("Great! I can explain each vocation. What would you like to be? A {sorcerer}, {druid}, {paladin}, or {knight}?", cid)
				status = 2
		else
			selfSay("You need to be at least level " .. rebirthLevel .. " before you can {leave}.", cid)
			status = 1
		end
	elseif((isFocused(cid)) and (status == 2)) then
		if (msg == "sorcerer") then
			selfSay("A sorcerer has low health, lots of mana, and can cast aggressive spells meant to mame creatures. I can explain {druids}, {paladins}, and {knights} as well. Do you want to be a sorcerer?", cid)
			choice = 1
		elseif (msg == "druid") then
			selfSay("A druid has low health, lots of mana, and can cast healing and summoning spells meant to help teammates. I can explain {sorcerers}, {paladins}, and {knights} as well. Do you want to be a druid?", cid)
			choice = 2
		elseif (msg == "paladin") then
			selfSay("A paladin has a medium amount of health, 200 stamina, and can attack with long range attacks and spells. I can explain {sorcerers}, {druids}, and {knights} as well. Do you want to be a paladin?", cid)
			choice = 3
		elseif (msg == "knight") then
			selfSay("A knight has lots health, no mana, and can kill melee attacks and spells (no range). I can explain {sorcerers}, {druids}, and {knights} as well. Do you want to be a knight?", cid)
			choice = 4
		elseif (msg == "yes") then
			selfSay("Are you SURE? This choice cannot be undone.", cid)
			status = 3
		end
	elseif((isFocused(cid)) and (msg == "bye" or msg == "goodbye" or msg == "cya")) then
		selfSay("Goodbye!", cid, true)
		removeFocus(cid)
	elseif ((isFocused(cid)) and (status == 3)) then
		if (msg == "yes") then
			selfSay("Good luck!", cid)
			doRebirthPlayer(cid, choice)
			removeFocus(cid)
		else
			selfSay("See me when you've made up your mind. I can explain the difference between a {sorcerer}, {druid}, {paladin}, or {knight} again.", cid)
			status = 2
		end
	end
end
 
function onPlayerCloseChannel(cid)
	if(isFocused(cid)) then
		selfSay("Goodbye.")
		removeFocus(cid)
	end
end
 
function onThink()
	for i, focus in pairs(focuses) do
		if(not isCreature(focus)) then
			removeFocus(focus)
		else
			local distance = getDistanceTo(focus) or -1
			if((distance > 4) or (distance == -1)) then
				selfSay("Goodbye.")
				removeFocus(focus)
			end
		end
	end
	lookAtFocus()
end
 
function doRebirthPlayer(cid, voc)
	if (cid == nil) then
		return true
	end
	local pos1 = {x=1298,y=1150,z=5}
	doPlayerSetVocation(cid,voc)
	doPlayerSetTown(cid,1)
	doTeleportThing(cid, pos1, FALSE)
	giveItems(cid)
	return true
end


