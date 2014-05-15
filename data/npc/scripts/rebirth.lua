local config = {
	price = 0, -- Price of first rebirth
	priceIncrease = 0, -- Works as 'price' + current rebirths * priceIncrease.
	rebirthLevel = 100, -- Level for first rebirth.
	rebirthIncrease = 0, -- Works as 'rebirthLevel' + current rebirths * rebirthIncrease.
	maxRebirths = 1000, -- Number of times a player can rebirth.
	level = 1, -- The level the player is set to apon rebirth.
	healthPercent = 1.00, -- 1.00 = 100%.
	health = 100, -- Only used if 'healthPercent' = 0.
	manaPercent = 1.00, -- 1.00 = 100%.
	mana = 100, -- Only used if 'manaPercent' = 0.
	keepSkills = true, -- Wether players keep skills and level apon rebirth.
	skillLevel = 10, -- Only used if 'keepSkills' = false.
	magicLevel = 0, -- Only used if 'keepSkills' = false.
	capacity = 2200, -- The capacity players are set to apon rebirth.
	templePos = {x = 2000, y = 2000, z = 7}, -- The place where players reset to should there town id return 0.
	storage = 85987 -- Player storage rebirth count is kept on.
}
 
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
 
function onCreatureSay(cid, type, msg)
	if((msg == "hi") and not (isFocused(cid))) then
		selfSay("Welcome, ".. getCreatureName(cid) ..".", cid, true)
		selfSay("I can {rebirth} you!", cid)
		addFocus(cid)
		status = 1
	elseif((isFocused(cid)) and (msg == "rebirth") and (status == 1)) then
		if (getCreatureStorage(cid, config.storage) < config.maxRebirths) then
			storage = getCreatureStorage(cid, config.storage)
			rebirthLevel = config.rebirthLevel + (config.rebirthIncrease * storage)
			if (getPlayerLevel(cid) >= rebirthLevel) then
				money = config.price + (config.priceIncrease * storage)
				if (getPlayerMoney(cid) >= money) then
					selfSay("I can rebirth you for " .. money .. " gold.", cid)
					selfSay("Do you want me to rebirth you?", cid)
					status = 2
				else
					selfSay("You need at least " .. money .. " gold before you can rebirth.", cid)
					status = 1
				end
			else
				selfSay("You need to be at least level " .. rebirthLevel .. " before you can rebirth.", cid)
				status = 1
			end
		else
			selfSay("It seems you can not rebirth anymore.", cid)
			status = 1
		end
	elseif((isFocused(cid)) and (msg == "yes") and (status == 2)) then
		selfSay("Ok then i will rebirth you.", cid)
		selfSay("You will now be logged out.", cid)
		doPlayerRemoveMoney(cid, money)
		addEvent(doRebirthPlayer, 2000, {cid=cid})
		removeFocus(cid)
	elseif((isFocused(cid)) and (msg == "no") and (status == 2)) then
		selfSay("Maybe one day you will wise up and change your mind!", cid)
		status = 1
	elseif((isFocused(cid)) and (msg == "bye" or msg == "goodbye" or msg == "cya")) then
		selfSay("Goodbye!", cid, true)
		removeFocus(cid)
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
 
function doRebirthPlayer(cid)
	cid = cid.cid
	if (cid == nil) then
		return true
	end
 
	local guid = getPlayerGUID(cid)
 
	if (config.healthPercent > 0) then
		health = getCreatureMaxHealth(cid) * config.healthPercent
	else
		health = config.health
	end
	if (config.manaPercent > 0) then
		mana = getCreatureMaxMana(cid) * config.manaPercent
	else
		mana = config.mana
	end
	if (getPlayerTown(cid) > 0) then
		pos = getTownTemplePosition(getPlayerTown(cid))
	else
		pos = config.templePos
	end
 
 
	doCreatureSetStorage(cid, config.storage, getCreatureStorage(cid, config.storage) + 1)
	doRemoveCreature(cid, true)
	db.executeQuery("UPDATE `players` SET level = " .. config.level .. " WHERE id = " .. guid .. ";")
	db.executeQuery("UPDATE `players` SET cap = " .. config.capacity .. " WHERE id = " .. guid .. ";")
	db.executeQuery("UPDATE `players` SET health = " .. health .. " WHERE id = " .. guid .. ";")
	db.executeQuery("UPDATE `players` SET healthmax = " .. health .. " WHERE id = " .. guid .. ";")
	db.executeQuery("UPDATE `players` SET mana = " .. mana .. " WHERE id = " .. guid .. ";")
	db.executeQuery("UPDATE `players` SET manamax = " .. mana .. " WHERE id = " .. guid .. ";")
	db.executeQuery("UPDATE `players` SET posx = " .. pos.x .. " WHERE id = " .. guid .. ";")
	db.executeQuery("UPDATE `players` SET posy = " .. pos.y .. " WHERE id = " .. guid .. ";")
	db.executeQuery("UPDATE `players` SET posz = " .. pos.z .. " WHERE id = " .. guid .. ";")
 
	if (not config.keepSkills) then
		db.executeQuery("UPDATE `players` SET maglevel = " .. config.magicLevel .. " WHERE id = " .. guid .. ";")
		db.executeQuery("UPDATE `player_skills` SET value = " .. config.skillLevel .. " WHERE id = " .. guid .. ";")
	end
	return true
end