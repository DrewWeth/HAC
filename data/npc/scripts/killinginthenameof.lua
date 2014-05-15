local tasks =
{
	[1] = {questStarted = 1510, questStorage = 65000, killsRequired = 500, raceName = "Captain Freak", rewards = {{enable = true, type = "exp", values = 200000}, {enable = true, type = "money", values = 200}}},
 
	[2] = {questStarted = 1511, questStorage = 65001, killsRequired = 500, raceName = "Ferumbras", rewards = {{enable = true, type = "exp", values = 300000}, {enable = true, type = "money", values = 250}}},
 
	[3] = {questStarted = 1512, questStorage = 65002, killsRequired = 500, raceName = "Bull Wolf", rewards = {{enable = true, type = "exp", values = 50000}, {enable = true, type = "money", values = 400}}},
 
	[4] = {questStarted = 1513, questStorage = 65003, killsRequired = 500, raceName = "Snakebite Master", rewards = {{enable = true, type = "exp", values = 300000}, {enable = true, type = "money", values = 800}}},
 
	[5] = {questStarted = 1514, questStorage = 65004, killsRequired = 500, raceName = "Kung Fu Panda", rewards = {{enable = true, type = "exp", values = 800000}, {enable = true, type = "money", values = 800}}},
 
	[6] = {questStarted = 1515, questStorage = 65005, killsRequired = 500, raceName = "Captain Sniper", rewards = {{enable = true, type = "exp", values = 800000}, {enable = true, type = "money", values = 800}}},
	
	[7] = {questStarted = 1516, questStorage = 65006, killsRequired = 500, raceName = "Devils Bounty Hunter", rewards = {{enable = true, type = "exp", values = 800000}, {enable = true, type = "money", values = 800}}},
	
	[8] = {questStarted = 1517, questStorage = 65007, killsRequired = 500, raceName = "Archdruid", rewards = {{enable = true, type = "exp", values = 800000}, {enable = true, type = "money", values = 800}}},
	
	[9] = {questStarted = 1518, questStorage = 65008, killsRequired = 500, raceName = "Devils Lighter", rewards = {{enable = true, type = "exp", values = 800000}, {enable = true, type = "money", values = 800}}},
	
	[10] = {questStarted = 1519, questStorage = 65009, killsRequired = 500, raceName = "Deadly Panda", rewards = {{enable = true, type = "exp", values = 800000}, {enable = true, type = "money", values = 800}}},
	
	[11] = {questStarted = 1520, questStorage = 65010, killsRequired = 500, raceName = "Unknown Freak", rewards = {{enable = true, type = "exp", values = 800000}, {enable = true, type = "money", values = 800}}},
	
	[12] = {questStarted = 1521, questStorage = 65011, killsRequired = 500, raceName = "Troll Champion", rewards = {{enable = true, type = "exp", values = 800000}, {enable = true, type = "money", values = 800}}},
	
	[13] = {questStarted = 1522, questStorage = 65012, killsRequired = 500, raceName = "Bitchy Hydra", rewards = {{enable = true, type = "exp", values = 800000}, {enable = true, type = "money", values = 800}}},
	
	[14] = {questStarted = 1523, questStorage = 65013, killsRequired = 500, raceName = "Rebirth Freak", rewards = {{enable = true, type = "exp", values = 800000}, {enable = true, type = "money", values = 800}}}
	
}
 
local rankStorage = 32150
local storage = 64521
 
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
local voc = {}
 
function onCreatureAppear(cid)                          npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)                       npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)                  npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                                      npcHandler:onThink() end
 
function creatureSayCallback(cid, type, msg)
 
	local s = getCreatureStorage(cid, storage)
 
	if(not npcHandler:isFocused(cid)) then
		return false
	end
	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_PRIVATE and 0 or cid
	if msgcontains(msg, "task") then
 
		if(s < 1) then
			doCreatureSetStorage(cid, storage, 1)
			s = getCreatureStorage(cid, storage)
		end
 
		if(getCreatureStorage(cid, rankStorage) < 1) then
			doCreatureSetStorage(cid, rankStorage, 0)
		end
 
		if tasks[s] then
			if(getCreatureStorage(cid, tasks[s].questStarted) < 1) then
				if(getCreatureStorage(cid, tasks[s].creatureStorage) < 0) then
					doCreatureSetStorage(cid, tasks[s].creatureStorage, 0)
				end
 
				if(getCreatureStorage(cid, tasks[s].questStorage) < 0) then
					doCreatureSetStorage(cid, tasks[s].questStorage, 0)
				end
 
				doCreatureSetStorage(cid, tasks[s].questStarted, 1)
				selfSay("You have started the task number " .. getPlayerStorageValue(cid, storage) .. ", in this task you need to kill " .. tasks[s].killsRequired .. " " .. tasks[s].raceName .. ".", cid)
			else
				selfSay("You are currently making the task about " .. tasks[s].raceName .. ", task number " .. getPlayerStorageValue(cid, storage) .. ".", cid)
			end
		else
			print("[Warning - Error::Killing in the name of::Tasks config] Something is wrong.")
		end
 
	elseif msgcontains(msg, "report") then
		if tasks[s] and tasks[s].questStarted > 0 then
			if(getCreatureStorage(cid, tasks[s].creatureStorage) < 0) then
				doCreatureSetStorage(cid, tasks[s].creatureStorage, 0)
			end
 
			if(getCreatureStorage(cid, tasks[s].questStorage) < 0) then
				doCreatureSetStorage(cid, tasks[s].questStorage, 0)
			end
 
			if(getCreatureStorage(cid, tasks[s].questStorage) >= tasks[s].killsRequired) then
				for i = 1, table.maxn(tasks[s].rewards) do
					if(tasks[s].rewards[i].enable) then
						if isInArray({"boss", "teleport", 1}, tasks[s].rewards[i].type) then
							doTeleportThing(cid, tasks[s].rewards[i].values)
						elseif isInArray({"exp", "experience", 2}, tasks[s].rewards[i].type) then
							doPlayerAddExperience(cid, tasks[s].rewards[i].values)
						elseif isInArray({"item", 3}, tasks[s].rewards[i].type) then
							doPlayerAddItem(cid, tasks[s].rewards[i].values[1], tasks[s].rewards[i].values[2])
						elseif isInArray({"money", 4}, tasks[s].rewards[i].type) then
							doPlayerAddMoney(cid, tasks[s].rewards[i].values)
						elseif isInArray({"storage", "stor", 5}, tasks[s].rewards[i].type) then
							doCreatureSetStorage(cid, tasks[s].rewards[i].values[1], tasks[s].rewards[i].values[2])
						elseif isInArray({"points", "rank", 2}, tasks[s].rewards[i].type) then
							doCreatureSetStorage(cid, rankStorage, getCreatureStorage(cid, rankStorage) + tasks[s].rewards[i].values)
						else
							print("[Warning - Error::Killing in the name of::Tasks config] Bad reward type: " .. tasks[s].rewards[i].type .. ", reward could not be loaded.")
						end
					end
				end
				local rank = getCreatureStorage(cid, rankStorage)
				selfSay("Great!... you have finished the task number " .. s .. "" .. (rank > 4 and ", you are a " or "") .. "" .. (((rank > 4 and rank < 10) and ("Huntsman") or (rank > 9 and rank < 20) and ("Ranger") or (rank > 19 and rank < 30) and ("Big Game Hunter") or (rank > 29 and rank < 50) and ("Trophy Hunter") or (rank > 49) and ("Elite Hunter")) or "") .. ". Good job.", cid)
				doCreatureSetStorage(cid, storage, s + 1)
			else
				selfSay("Current " .. getCreatureStorage(cid, tasks[s].questStorage) .. " " .. tasks[s].raceName .. " killed, you need to kill " .. tasks[s].killsRequired .. ".", cid)
			end
		else
			selfSay("You do not have started any task.", cid)
		end
	end
	return true
end
 
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())