-- assign any tile you wish to this script that a player can walk on with action id 900


-- Config --
local storage = 18010 -- Storage value for the player when he steps on and off the tile

local skilltries = 1 -- Number of tries per skill
local t = 2 * 800   -- Set the time before try is added to skills

-------------------------------------------------------------------------
function trainerthree(p)
if isPlayer(p.cid) and getPlayerStorageValue(p.cid, 18010) == 1 then
if p.item.actionid == 900 then
doPlayerSendTextMessage(p.cid,22,"Your training session will begin in 3 seconds")
addEvent(trainertwo, 10 * 100, p)
end
end
return FALSE
end
function trainertwo(p)
if isPlayer(p.cid) and getPlayerStorageValue(p.cid, 18010) == 1 then
if p.item.actionid == 900 then
doPlayerSendTextMessage(p.cid,22,"Your training session will begin in 2 seconds")
addEvent(trainerone, 10 * 100, p)
end
end
return FALSE
end
function trainerone(p)
if isPlayer(p.cid) and getPlayerStorageValue(p.cid, 18010) == 1 then
if p.item.actionid == 900 then
doPlayerSendTextMessage(p.cid,22,"Your training session will begin in 1 seconds")
addEvent(readyToTrain, 10 * 100, p)
end
end
return FALSE
end



function readyToTrain(p)
if isPlayer(p.cid) and getPlayerStorageValue(p.cid, 18010) == 1 then
if p.item.actionid == 900 then
doPlayerSendTextMessage(p.cid,22,"Your training session will now begin")
addEvent(trainMeA, t, p)
end
end
return FALSE
end


function trainMeA(p)
if isPlayer(p.cid) and getPlayerStorageValue(p.cid, 18010) == 1 then
if p.item.actionid == 900 then

for a = 1, t do 
if(a == t) then
doPlayerAddSkillTry(p.cid, SKILL_FIST, skilltries)
doPlayerAddSkillTry(p.cid, SKILL_SWORD, skilltries)
doPlayerAddSkillTry(p.cid, SKILL_CLUB, skilltries)
doPlayerAddSkillTry(p.cid, SKILL_AXE, skilltries)
doPlayerAddSkillTry(p.cid, SKILL_DISTANCE, skilltries)
doPlayerAddSkillTry(p.cid, SKILL_SHIELD, skilltries)
end
end	
end
addEvent(trainMeB, t, p)
end
return FALSE
end

function trainMeB(p)
if isPlayer(p.cid) and getPlayerStorageValue(p.cid, 18010) == 1 then
if p.item.actionid == 900 then
for b = 1, t do 
if(b == t) then
doPlayerAddSkillTry(p.cid, SKILL_FIST, skilltries)
doPlayerAddSkillTry(p.cid, SKILL_CLUB, skilltries)
doPlayerAddSkillTry(p.cid, SKILL_SWORD, skilltries)
doPlayerAddSkillTry(p.cid, SKILL_AXE, skilltries)
doPlayerAddSkillTry(p.cid, SKILL_DISTANCE, skilltries)
doPlayerAddSkillTry(p.cid, SKILL_SHIELD, skilltries)

end
end	
end
addEvent(trainMeA, t, p)
end
return FALSE
end



function onStepIn(cid, item)
local p = {cid = cid, item = item, pos = pos}
setPlayerStorageValue(p.cid, 18010, 1)
if isPlayer(p.cid) and getPlayerStorageValue(p.cid, 18010) == 1 then
if p.item.actionid == 900 then
addEvent(trainerthree, 1 * 1000, p)
end
end
return FALSE
end


 function onStepOut(cid, item)
getPlayerStorageValue(cid, 18010)
setPlayerStorageValue(cid, 18010, 0)
doPlayerSendTextMessage(cid,22,"Your training session has now ended")
end