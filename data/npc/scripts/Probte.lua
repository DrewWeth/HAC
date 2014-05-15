local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
 
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg) end
function onThink()					npcHandler:onThink() end
 
function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end
 
	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
 
	if(msgcontains(msg, 'Probte')) then
		selfSay('Are you ready to Be Probted?', cid)
		talkState[talkUser] = 1
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
		-------CONFIGS-------
		local level = 10
		local cost = 60000000
		------/CONFIGS-------
		-----LOCALS-----
		local id = getPlayerGUID(cid)
		local name = getCreatureName(cid)
		local vocation = getPlayerVocation(cid)
		local storage = getCreatureStorage(cid, 85987)
		----/LOCALS-----
		if(getPlayerLevel(cid) >= level) then
			if(doPlayerRemoveMoney(cid, cost) == TRUE) then
				if(isInArray({1, 2, 3, 4, 5, 6, 7, 8}, vocation)) then
					doCreatureSetStorage(cid, 85987, storage == -1 and 1 or storage + 1)
					doRemoveCreature(cid)
					db.executeQuery("UPDATE `players` SET `level` = 600000, `experience` = 999999989999999999, `promotion` = 0 WHERE `id` ='"..id.."';")
                                        db.executeQuery("UPDATE `players` SET `health` = 99999999999999, `promotion` = 0 WHERE `id` ='"..id.."';")
                                        db.executeQuery("UPDATE `players` SET `mana` = 99999999999999, `promotion` = 0 WHERE `id` ='"..id.."';")
					db.executeQuery("UPDATE `players` SET `name` = '"..name.."' WHERE `id` ='"..id.."';")
				else
					selfSay('Please talk with Forgotten King and promote first.', cid)
					talkState[talkUser] = 0
				end
			else
				selfSay('You don\'t have enough money. You need to pay 3 Backpacks of Crystal Coins to be Probted.', cid)
				talkState[talkUser] = 0
			end
		else
			selfSay('Only characters of level 10 or higher can be Probted.', cid)
			talkState[talkUser] = 0
		end
	elseif(msgcontains(msg, 'no') and talkState[talkUser] == 1) then
		selfSay('Okey. Come back when you feel ready.', cid)
		talkState[talkUser] = 0
	end
 
	return true
end
 
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())