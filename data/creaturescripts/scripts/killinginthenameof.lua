local questCreatures =
{
	["Captain Freak"] = {questStarted = 1510, questStorage = 65000, creatureStorage = 15000, killsRequired = 500, raceName = "Captain Freak"},
	["Ferumbras"] = {questStarted = 1510, questStorage = 65001, creatureStorage = 15001, killsRequired = 500, raceName = "Ferumbras"},
	["Bull Wolf"] = {questStarted = 1510, questStorage = 65002, creatureStorage = 15002, killsRequired = 500, raceName = "Bull Wolf"},
	["Snakebite Master"] = {questStarted = 1510, questStorage = 65003, creatureStorage = 15003, killsRequired = 500, raceName = "Snakebite Master"},
	["Kung Fu Panda"] = {questStarted = 1510, questStorage = 65005, creatureStorage = 15004, killsRequired = 500, raceName = "Kung Fu Panda"},
	["Captain Sniper"] = {questStarted = 1510, questStorage = 65006, creatureStorage = 15005, killsRequired = 500, raceName = "Captain Sniper"},
	["Devils Bounty Hunter"] = {questStarted = 1510, questStorage = 65007, creatureStorage = 15006, killsRequired = 500, raceName = "Devils Bounty Hunter"},
	["Archdruid"] = {questStarted = 1510, questStorage = 65008, creatureStorage = 15007, killsRequired = 500, raceName = "Archdruid"},
	["Devils Lighter"] = {questStarted = 1510, questStorage = 65009, creatureStorage = 15008, killsRequired = 500, raceName = "Devils Lighter"},
	["Deadly Panda"] = {questStarted = 1510, questStorage = 65010, creatureStorage = 15009, killsRequired = 500, raceName = "Deadly Panda"},
	["Unknown Freak"] = {questStarted = 1510, questStorage = 65011, creatureStorage = 150010, killsRequired = 500, raceName = "Unknown Freak"},
	["Troll Champion"] = {questStarted = 1510, questStorage = 65012, creatureStorage = 150011, killsRequired = 500, raceName = "Troll Champion"},
	["Bitchy Hydra"] = {questStarted = 1510, questStorage = 65013, creatureStorage = 150012, killsRequired = 500, raceName = "Bitchy Hydra"},
	["Rebirth Freak"] = {questStarted = 1510, questStorage = 65014, creatureStorage = 150013, killsRequired = 500, raceName = "Rebirth Freak"}
					
 
}
 
local msgType = MESSAGE_STATUS_CONSOLE_ORANGE
 
function onKill(cid, target, lastHit)
 
local creature = questCreatures[getCreatureName(target):lower()]
 
	if creature then
		if isPlayer(target) then return true end
 
		if getCreatureStorage(cid, creature.questStarted) > 0 then
			if getCreatureStorage(cid, creature.questStorage) < creature.killsRequired then
				if getCreatureStorage(cid, creature.questStorage) < 0 then
					doCreatureSetStorage(cid, creature.questStorage, 0)
				end
 
				if getCreatureStorage(cid, creature.creatureStorage) < 0 then
					doCreatureSetStorage(cid, creature.creatureStorage, 0)
				end
				doCreatureSetStorage(cid, creature.questStorage, getCreatureStorage(cid, creature.questStorage) + 1)
				doCreatureSetStorage(cid, creature.creatureStorage, getCreatureStorage(cid, creature.creatureStorage) + 1)
				doPlayerSendTextMessage(cid, msgType, getCreatureStorage(cid, creature.creatureStorage) .. " " .. getCreatureName(target) .. " defeated. Total [" .. getCreatureStorage(cid, creature.questStorage) .. "/" .. creature.killsRequired .. "] " .. creature.raceName .. ".")
			end
		end
	end
	return true
end