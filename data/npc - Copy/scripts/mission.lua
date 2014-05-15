local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
function creatureSayCallback(cid, type, msg)
if(not npcHandler:isFocused(cid)) then
return false
end
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
if(msgcontains(msg, 'quest')) then
selfSay('To start this quest tell {mission}', cid) --This is just an example, In this script added 4 mission for you ;)
end
    if(msgcontains(msg, 'mission')) then
        if(getPlayerStorageValue(cid,700) < 1) then
            selfSay('Your first mission will be to get 100 {tarantula egg}.', cid)
            talkState[talkUser] = 1
        elseif (getPlayerStorageValue(cid,701) < 1) then
                selfSay('Your next mission will be to get 150 {strands of medusa hair}.', cid)
                talkState[talkUser] = 1
        elseif (getPlayerStorageValue(cid,702) < 0) then
                selfSay('Your next mission will be to get 300 {red dragon scales}.', cid)
                talkState[talkUser] = 1
        elseif (getPlayerStorageValue(cid,703) < 0) then
                selfSay('Your next mission will be to get 400 {green dragon scales}.', cid)
                talkState[talkUser] = 1
                
                
                
                
        elseif (getPlayerStorageValue(cid,703) == 1) then --zmieniac w zaleznosci od ostatniego storage!!
                selfSay('You have done all missions.', cid)
                talkState[talkUser] = 1
                
                
                
                
        end
        ---------------------------------------
        elseif(msgcontains(msg, 'tarantula egg') and talkState[talkUser] == 1 and (getPlayerStorageValue(cid,700) < 1)) then
        if(doPlayerRemoveItem(cid, 11198, 100) == TRUE) then
            setPlayerStorageValue(cid,700,1)
            doPlayerAddPercentLevel(cid, 5) 
            selfSay('Thank you.', cid)
            talkState[talkUser] = 0
        else
            selfSay('To end mission you need have 100 {tarantula egg}.', cid)
        end
        ---------------------------------------
        elseif(msgcontains(msg, 'strands of medusa hair') and talkState[talkUser] == 1  and (getPlayerStorageValue(cid,701) < 1) and (getPlayerStorageValue(cid,700) == 1)) then
        if(doPlayerRemoveItem(cid, 11226, 150) == TRUE) then
            setPlayerStorageValue(cid,701,1)
            doPlayerAddPercentLevel(cid, 7) 
            selfSay('Thank you.', cid)
            talkState[talkUser] = 0
        else
            selfSay('To end mission you need have 150 {strands of medusa hair}.', cid)
        end
        ---------------------------------------
        elseif(msgcontains(msg, 'red dragon scales') and talkState[talkUser] == 1  and (getPlayerStorageValue(cid,702) < 1) and (getPlayerStorageValue(cid,701) == 1)) then
        if(doPlayerRemoveItem(cid, 5882, 300) == TRUE) then
            setPlayerStorageValue(cid,702,1)
            doPlayerAddPercentLevel(cid, 6) 
            selfSay('Thank you.', cid)
            talkState[talkUser] = 0
        else
            selfSay('To end mission you need have 300 {red dragon scales}.', cid)
        end
        ---------------------------------------
        elseif(msgcontains(msg, 'green dragon scales') and talkState[talkUser] == 1 and (getPlayerStorageValue(cid,703) < 1) and (getPlayerStorageValue(cid,702) == 1)) then
        if(doPlayerRemoveItem(cid, 5920, 400) == TRUE) then
            setPlayerStorageValue(cid,703,1)
            doPlayerAddPercentLevel(cid, 5) 
            selfSay('Thank you.', cid)
            talkState[talkUser] = 0
        else
            selfSay('To end mission you need have 400 {green dragon scales}.', cid)
        end
        ------------------------------------------
        
    end
end    
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new()) 