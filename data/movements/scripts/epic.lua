-- Original script by Molinero -- The Super-Ultimate Transformation Ring --
-- Super Vocation Transformation script made by Arthur, aka artofwork --
-- You can assign an item to this script and the benifits the item will bring are --
-- A totally new vocation for each current vocation, check your vocations.xml for the new vocations --
-- Independent Skills and Magic Level Boost for each new vocation --
-- Auto Mana Shield for new mage vocations, Auto Super Haste for all new vocations --
-- Independent Auto HP and Mana gain rates for each new vocation --
-- For each new vocation the new vocation recieves a new outfit and has an independent special effect added to help idenify the new vocation -- 
-- This script is set to inifnite, but can be set to have mana taken from the player, when mana runs out the item will be destroyed --

local storage = 18009 -- storage value for the vocation transformation --
local sorcerervoc = 9 -- 9 number is the vocation id of an epic master sorcerer in vocations.xml --
local druidvoc = 10   -- 10 number is the vocation id of a epic elder druid in vocations.xml --
local paladinvoc = 11 -- 11 number is the vocation id of a epic royal paladin in vocations.xml --
local knightvoc = 12  -- 12 number is the vocation id of an epic elite knight in vocations.xml --

local svoc = 5
local dvoc = 6
local pvoc = 7
local kvoc = 8

local outfitSorc = -- sorcerer new outfit after transformation --
{
lookType = 130,
lookHead = 19,
lookBody = 71,
lookLegs = 128,
lookFeet = 128,
lookAddons = 3
}

local outfitDruid = -- druid new outfit after transformation --
{
lookType = 63,
lookHead = 20,
lookBody = 30,
lookLegs = 40,
lookFeet = 50,
lookAddons = 3
}

local outfitPaladin = -- paladin new outfit after transformation --
{
lookType = 129,
lookHead = 95,
lookBody = 116,
lookLegs = 121,
lookFeet = 115,
lookAddons = 3
}


local outfitKnight = -- knight new outfit after transformation --
{
lookType = 131,
lookHead = 95,
lookBody = 95,
lookLegs = 95,
lookFeet = 95,
lookAddons = 3
}
 

-- warning do not modify these settings, unless you want to take mana from player --
local manatimeinterval = 1000 -- time interval (miliseconds) --
local numberofmanaused = 0 -- number of mana used or added up during time interval --
local mananeededtoexec = 0 -- number of mana needed to execute script, keep this setting this 0 --
local warnplaya = 1 -- warns player when runing out of mana, 1 = yes --
local numberofmanatriggerwarn = 20 -- number of mana that triggers the warnings --

local sorcerfirsteffect = CONST_ME_ENERGYAREA
local sorcersecondeffect = CONST_ME_BLOCKHIT
local sorcerflingeffect = CONST_ANI_SMALLHOLY
local sorcerlandeffect = CONST_ME_TELEPORT
local sorcerringwaste = CONST_ME_FIREWORK_YELLOW
local sorcerringsorb = CONST_ME_FIREATTACK

local druidfirsteffect = CONST_ME_ICEATTACK
local druidsecondeffect = CONST_ME_ICETORNADO
local druidflingeffect = CONST_ME_ICETORNADO
local druidlandeffect = CONST_ME_ICETORNADO
local druidringwaste = CONST_ME_FIREWORK_BLUE
local druidringsorb = CONST_ME_MAGIC_BLUE

local knightfirsteffect = CONST_ME_EXPLOSIONAREA
local knightsecondeffect = CONST_ME_FIREAREA
local knightflingeffect = CONST_ANI_FIRE
local knightlandeffect = CONST_ME_FIREWORK_RED
local knightringwaste = CONST_ME_FIREWORK_RED
local knightringsorb = CONST_ME_MAGIC_RED

local paladinfirsteffect = CONST_ME_YELLOW_RINGS
local paladinsecondeffect = CONST_ME_BLOCKHIT
local paladinflingeffect = CONST_ANI_SMALLHOLY
local paladinlandeffect = CONST_ME_HOLYAREA
local paladinringwaste = CONST_ME_FIREWORK_YELLOW
local paladinringsorb = CONST_ME_MAGIC_GREEN

-- skills of the sorcerer after transformation --
local sorcerercondition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(sorcerercondition, CONDITION_PARAM_TICKS, -1)            -- the -1 is to allow conditions to run forever -
setConditionParam(sorcerercondition, CONDITION_PARAM_SKILL_SHIELD, 50)     -- add 50 shielding to current shield skill --
setConditionParam(sorcerercondition, CONDITION_PARAM_STAT_MAGICLEVEL, 35) -- add 100 levels of magic to the player's current magic level --
setConditionParam(sorcerercondition, CONDITION_PARAM_STAT_MAXHEALTH, 500000)  -- add 50000 health to the player's current hp --
setConditionParam(sorcerercondition, CONDITION_PARAM_STAT_MAXMANA, 2000000)   -- add 200000 mana to the players current mana --
-- skills of the druid after transformation --
local druidcondition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(druidcondition, CONDITION_PARAM_TICKS, -1)               
setConditionParam(druidcondition, CONDITION_PARAM_SKILL_SHIELD, 20)
setConditionParam(druidcondition, CONDITION_PARAM_STAT_MAGICLEVEL, 35)
setConditionParam(druidcondition, CONDITION_PARAM_STAT_MAXHEALTH, 500000)
setConditionParam(druidcondition, CONDITION_PARAM_STAT_MAXMANA, 7000)
-- skills of the paladin after transformation --
local paladincondition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(paladincondition, CONDITION_PARAM_TICKS, -1)
setConditionParam(paladincondition, CONDITION_PARAM_SKILL_DISTANCE, 35)
setConditionParam(paladincondition, CONDITION_PARAM_SKILL_SHIELD, 30)
setConditionParam(paladincondition, CONDITION_PARAM_STAT_MAGICLEVEL, 15)
setConditionParam(paladincondition, CONDITION_PARAM_STAT_MAXHEALTH, 800000)
setConditionParam(paladincondition, CONDITION_PARAM_STAT_MAXMANA, 3500)
-- skills of the knight after transformation --
local knightcondition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(knightcondition, CONDITION_PARAM_TICKS, -1)
setConditionParam(knightcondition, CONDITION_PARAM_SKILL_FIST, 50)
setConditionParam(knightcondition, CONDITION_PARAM_SKILL_CLUB, 50)
setConditionParam(knightcondition, CONDITION_PARAM_SKILL_SWORD, 50)
setConditionParam(knightcondition, CONDITION_PARAM_SKILL_AXE, 50)
setConditionParam(knightcondition, CONDITION_PARAM_SKILL_SHIELD, 75)
setConditionParam(knightcondition, CONDITION_PARAM_STAT_MAGICLEVEL, 10)
setConditionParam(knightcondition, CONDITION_PARAM_STAT_MAXHEALTH, 1500000)
setConditionParam(knightcondition, CONDITION_PARAM_STAT_MAXMANA, 2500)

-- settings for health and mana regeneration per second --
local sorcererregen = createConditionObject(CONDITION_REGENERATION)
setConditionParam(sorcererregen, CONDITION_PARAM_TICKS, -1)
setConditionParam(sorcererregen, CONDITION_PARAM_HEALTHGAIN, 50000) -- the players health will regenerate at 100 hp per second --
setConditionParam(sorcererregen, CONDITION_PARAM_MANAGAIN, 1500)   -- the players mana will regenerate at 500 mana per second --

local druidregen = createConditionObject(CONDITION_REGENERATION)
setConditionParam(druidregen, CONDITION_PARAM_TICKS, -1)
setConditionParam(druidregen, CONDITION_PARAM_HEALTHGAIN, 50000)
setConditionParam(druidregen, CONDITION_PARAM_MANAGAIN, 1500)

local paladinregen = createConditionObject(CONDITION_REGENERATION)
setConditionParam(paladinregen, CONDITION_PARAM_TICKS, -1)
setConditionParam(paladinregen, CONDITION_PARAM_HEALTHGAIN, 80000)
setConditionParam(paladinregen, CONDITION_PARAM_MANAGAIN, 1000)

local knightregen = createConditionObject(CONDITION_REGENERATION)
setConditionParam(knightregen, CONDITION_PARAM_TICKS, -1)
setConditionParam(knightregen, CONDITION_PARAM_HEALTHGAIN, 100000)
setConditionParam(knightregen, CONDITION_PARAM_MANAGAIN, 500)


local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition2 = createConditionObject(CONDITION_HASTE) -- Auto super haste --
setConditionParam(condition2, CONDITION_PARAM_TICKS, -1)
setConditionFormula(condition2, 2.5, 0, 3.0, 0)
setCombatCondition(combat, condition2)

local condition3 = createConditionObject(CONDITION_MANASHIELD) -- Auto mana shield --
setConditionParam(condition3, CONDITION_PARAM_TICKS, -1)
setCombatCondition(combat, condition3)


function superform1(param)
if param.crca == 1 then
local cointype = getPlayerMaxMana(param.cid)
local pos = getCreaturePosition(param.cid)
local voca = getPlayerVocation(param.cid)

local nha = {x = pos.x, y = pos.y - 3, z = pos.z, stackpos = 255}
local sha = {x = pos.x, y = pos.y + 3, z = pos.z, stackpos = 255}
local wha = {x = pos.x - 3, y = pos.y, z = pos.z, stackpos = 255}
local eha = {x = pos.x + 3, y = pos.y, z = pos.z, stackpos = 255}

local nwa = {x = pos.x - 2, y = pos.y - 2, z = pos.z, stackpos = 255}
local nea = {x = pos.x + 2, y = pos.y - 2, z = pos.z, stackpos = 255}
local sea = {x = pos.x + 2, y = pos.y + 2, z = pos.z, stackpos = 255}
local swa = {x = pos.x - 2, y = pos.y + 2, z = pos.z, stackpos = 255}

if voca == 9 then
doSendMagicEffect(pos, sorcerfirsteffect)
doSendMagicEffect(pos, sorcersecondeffect)

doSendDistanceShoot(pos, nha, sorcerflingeffect)
doSendDistanceShoot(pos, sha, sorcerflingeffect)
doSendDistanceShoot(pos, wha, sorcerflingeffect)
doSendDistanceShoot(pos, eha, sorcerflingeffect)
doSendDistanceShoot(pos, nwa, sorcerflingeffect)
doSendDistanceShoot(pos, nea, sorcerflingeffect)
doSendDistanceShoot(pos, sea, sorcerflingeffect)
doSendDistanceShoot(pos, swa, sorcerflingeffect)

doSendMagicEffect(nha, sorcerlandeffect)
doSendMagicEffect(sha, sorcerlandeffect)
doSendMagicEffect(wha, sorcerlandeffect)
doSendMagicEffect(eha, sorcerlandeffect)
doSendMagicEffect(nwa, sorcerlandeffect)
doSendMagicEffect(nea, sorcerlandeffect)
doSendMagicEffect(sea, sorcerlandeffect)
doSendMagicEffect(swa, sorcerlandeffect)

doSetCreatureOutfit(param.cid, outfitSorc, -1) -- set new vocation outfit --
doAddCondition(param.cid, sorcerercondition)   -- add skills and magic level to new vocation -
doAddCondition(param.cid, condition3)          -- add auto mana shield to new vocation --
doAddCondition(param.cid, sorcererregen)       -- add regeneration to new vocation --

else if voca == 10 then
doSendMagicEffect(pos, druidfirsteffect)
doSendMagicEffect(pos, druidsecondeffect)

doSendDistanceShoot(pos, nha, druidflingeffect)
doSendDistanceShoot(pos, sha, druidflingeffect)
doSendDistanceShoot(pos, wha, druidflingeffect)
doSendDistanceShoot(pos, eha, druidflingeffect)
doSendDistanceShoot(pos, nwa, druidflingeffect)
doSendDistanceShoot(pos, nea, druidflingeffect)
doSendDistanceShoot(pos, sea, druidflingeffect)
doSendDistanceShoot(pos, swa, druidflingeffect)

doSendMagicEffect(nha, druidlandeffect)
doSendMagicEffect(sha, druidlandeffect)
doSendMagicEffect(wha, druidlandeffect)
doSendMagicEffect(eha, druidlandeffect)
doSendMagicEffect(nwa, druidlandeffect)
doSendMagicEffect(nea, druidlandeffect)
doSendMagicEffect(sea, druidlandeffect)
doSendMagicEffect(swa, druidlandeffect)

doSetCreatureOutfit(param.cid, outfitDruid, -1)   -- set new vocation outfit --
doAddCondition(param.cid, druidcondition)         -- add skills and magic level to new vocation --
doAddCondition(param.cid, condition3)             -- add auto mana shield to new vocation --
doAddCondition(param.cid, druidregen)             -- add regeneration to new vocation --
else if voca == 11 then
doSendMagicEffect(pos, paladinfirsteffect)
doSendMagicEffect(pos, paladinsecondeffect)

doSendDistanceShoot(pos, nha, paladinflingeffect)
doSendDistanceShoot(pos, sha, paladinflingeffect)
doSendDistanceShoot(pos, wha, paladinflingeffect)
doSendDistanceShoot(pos, eha, paladinflingeffect)
doSendDistanceShoot(pos, nwa, paladinflingeffect)
doSendDistanceShoot(pos, nea, paladinflingeffect)
doSendDistanceShoot(pos, sea, paladinflingeffect)
doSendDistanceShoot(pos, swa, paladinflingeffect)

doSendMagicEffect(nha, paladinlandeffect)
doSendMagicEffect(sha, paladinlandeffect)
doSendMagicEffect(wha, paladinlandeffect)
doSendMagicEffect(eha, paladinlandeffect)
doSendMagicEffect(nwa, paladinlandeffect)
doSendMagicEffect(nea, paladinlandeffect)
doSendMagicEffect(sea, paladinlandeffect)
doSendMagicEffect(swa, paladinlandeffect) 
doSetCreatureOutfit(param.cid, outfitPaladin, -1)     -- set new vocation outfit --
doAddCondition(param.cid, paladincondition)           -- add skills and magic level to new vocation --
doAddCondition(param.cid, paladinregen)               -- add regeneration to new vocation --
else if voca == 12 then
doSendMagicEffect(pos, knightfirsteffect)
doSendMagicEffect(pos, knightsecondeffect)

doSendDistanceShoot(pos, nha, knightflingeffect)
doSendDistanceShoot(pos, sha, knightflingeffect)
doSendDistanceShoot(pos, wha, knightflingeffect)
doSendDistanceShoot(pos, eha, knightflingeffect)
doSendDistanceShoot(pos, nwa, knightflingeffect)
doSendDistanceShoot(pos, nea, knightflingeffect)
doSendDistanceShoot(pos, sea, knightflingeffect)
doSendDistanceShoot(pos, swa, knightflingeffect)

doSendMagicEffect(nha, knightlandeffect)
doSendMagicEffect(sha, knightlandeffect)
doSendMagicEffect(wha, knightlandeffect)
doSendMagicEffect(eha, knightlandeffect)
doSendMagicEffect(nwa, knightlandeffect)
doSendMagicEffect(nea, knightlandeffect)
doSendMagicEffect(sea, knightlandeffect)
doSendMagicEffect(swa, knightlandeffect) 
doSetCreatureOutfit(param.cid, outfitKnight, -1)      -- set new vocation outfit --
doAddCondition(param.cid, knightcondition)            -- add skills and magic level to new vocation --
doAddCondition(param.cid, knightregen)                -- add regeneration to new vocation --
end
end
end
end

doAddCondition(param.cid, condition2)                 -- add super haste to all new vocations --

local mhp = getCreatureMaxHealth(param.cid)
local mma = getPlayerMaxMana(param.cid)
local chp = getCreatureHealth(param.cid)
local cma = getPlayerMana(param.cid)

local dhp = mhp - chp
local dma = mma - cma

doCreatureAddHealth(param.cid, dhp)
doPlayerAddMana(param.cid, dma) 

param.crcb = 1
param.voca = voca

setPlayerStorageValue(param.cid, 50781, 1)

addEvent(superform2, 1, param)
end
end
function superform2(param)

if param.crca == 1 and param.crcb == 1 and isCreature(param.cid) == TRUE and getPlayerStorageValue(param.cid, 50781) == 1 then
local pos = getCreaturePosition(param.cid)
doPlayerAddMana(param.cid, numberofmanaused) -- this function is global and effects all vocations equally, setting it to negative will remove mana --

if param.voca == 9 then 
doSendMagicEffect(pos, sorcerringwaste)
doSendMagicEffect(pos, sorcerringsorb)


else if param.voca == 10 then 
doSendMagicEffect(pos, druidringwaste)
doSendMagicEffect(pos, druidringsorb)


else if param.voca == 11 then 
doSendMagicEffect(pos, paladinringwaste)
doSendMagicEffect(pos, paladinringsorb)

else if param.voca == 12 then 
doSendMagicEffect(pos, knightringwaste)
doSendMagicEffect(pos, knightringsorb)

end
end
end
end
local manaleft = getPlayerMana(param.cid)
if manaleft < numberofmanatriggerwarn then -- if numberofmanaused is not set to 0 then this condition will activate based on if current mana is less then numberofmanatriggerwarn's value --
end
if manaleft < numberofmanaused then -- this is a fail safe if the mana becomes a negative value or if u assign a + or - to it then it will destroy the ring, im sure a better routine can be written for this --
param.crca = 0
param.crcb = 0
setPlayerStorageValue(param.cid, 50781, 0) -- removes storage value of transformation --
old = getPlayerStorageValue(cid, storage) -- get players old vocation and assign it to old --
doPlayerSetVocation(cid,old)               -- set players vocation using old's value --
setPlayerStorageValue(cid, 18009, 0) -- removes storage value --
doPlayerRemoveItem(param.cid, 7708) -- destroys the ring --


local pos = getCreaturePosition(param.cid)

local nha = {x = pos.x, y = pos.y - 3, z = pos.z, stackpos = 255}
local sha = {x = pos.x, y = pos.y + 3, z = pos.z, stackpos = 255}
local wha = {x = pos.x - 3, y = pos.y, z = pos.z, stackpos = 255}
local eha = {x = pos.x + 3, y = pos.y, z = pos.z, stackpos = 255}

local nwa = {x = pos.x - 2, y = pos.y - 2, z = pos.z, stackpos = 255}
local nea = {x = pos.x + 2, y = pos.y - 2, z = pos.z, stackpos = 255}
local sea = {x = pos.x + 2, y = pos.y + 2, z = pos.z, stackpos = 255}
local swa = {x = pos.x - 2, y = pos.y + 2, z = pos.z, stackpos = 255}

-- removes the outfit, attributes, super haste, mana shield, hp/mp regeneration --
doRemoveCondition(param.cid, CONDITION_OUTFIT) 
doRemoveCondition(param.cid, CONDITION_ATTRIBUTES)
doRemoveCondition(param.cid, CONDITION_HASTE)
doRemoveCondition(param.cid, CONDITION_MANASHIELD)
doRemoveCondition(param.cid, CONDITION_REGENERATION)


if (isPlayer(param.cid) == FALSE) then
param.crca = 0
param.crcb = 0
setPlayerStorageValue(param.cid, 50781, 0) -- removes storage value of transformation --
old = getPlayerStorageValue(cid, storage) -- get players old vocation and assign it to old --
doPlayerSetVocation(cid,old)               -- set players vocation using old's value --
setPlayerStorageValue(cid, 18009, 0) -- removes storage value --
end

if param.voca == 9 then
doSendMagicEffect(pos, sorcerfirsteffect)
doSendMagicEffect(pos, sorcersecondeffect)

doSendDistanceShoot(pos, nha, sorcerflingeffect)
doSendDistanceShoot(pos, sha, sorcerflingeffect)
doSendDistanceShoot(pos, wha, sorcerflingeffect)
doSendDistanceShoot(pos, eha, sorcerflingeffect)
doSendDistanceShoot(pos, nwa, sorcerflingeffect)
doSendDistanceShoot(pos, nea, sorcerflingeffect)
doSendDistanceShoot(pos, sea, sorcerflingeffect)
doSendDistanceShoot(pos, swa, sorcerflingeffect)

doSendMagicEffect(nha, sorcerlandeffect)
doSendMagicEffect(sha, sorcerlandeffect)
doSendMagicEffect(wha, sorcerlandeffect)
doSendMagicEffect(eha, sorcerlandeffect)
doSendMagicEffect(nwa, sorcerlandeffect)
doSendMagicEffect(nea, sorcerlandeffect)
doSendMagicEffect(sea, sorcerlandeffect)
doSendMagicEffect(swa, sorcerlandeffect)

else if param.voca == 10 then
doSendMagicEffect(pos, druidfirsteffect)
doSendMagicEffect(pos, druidsecondeffect)

doSendDistanceShoot(pos, nha, druidflingeffect)
doSendDistanceShoot(pos, sha, druidflingeffect)
doSendDistanceShoot(pos, wha, druidflingeffect)
doSendDistanceShoot(pos, eha, druidflingeffect)
doSendDistanceShoot(pos, nwa, druidflingeffect)
doSendDistanceShoot(pos, nea, druidflingeffect)
doSendDistanceShoot(pos, sea, druidflingeffect)
doSendDistanceShoot(pos, swa, druidflingeffect)

doSendMagicEffect(nha, druidlandeffect)
doSendMagicEffect(sha, druidlandeffect)
doSendMagicEffect(wha, druidlandeffect)
doSendMagicEffect(eha, druidlandeffect)
doSendMagicEffect(nwa, druidlandeffect)
doSendMagicEffect(nea, druidlandeffect)
doSendMagicEffect(sea, druidlandeffect)
doSendMagicEffect(swa, druidlandeffect)

else if param.voca == 11 then
doSendMagicEffect(pos, paladinfirsteffect)
doSendMagicEffect(pos, paladinsecondeffect)

doSendDistanceShoot(pos, nha, paladinflingeffect)
doSendDistanceShoot(pos, sha, paladinflingeffect)
doSendDistanceShoot(pos, wha, paladinflingeffect)
doSendDistanceShoot(pos, eha, paladinflingeffect)
doSendDistanceShoot(pos, nwa, paladinflingeffect)
doSendDistanceShoot(pos, nea, paladinflingeffect)
doSendDistanceShoot(pos, sea, paladinflingeffect)
doSendDistanceShoot(pos, swa, paladinflingeffect)

doSendMagicEffect(nha, paladinlandeffect)
doSendMagicEffect(sha, paladinlandeffect)
doSendMagicEffect(wha, paladinlandeffect)
doSendMagicEffect(eha, paladinlandeffect)
doSendMagicEffect(nwa, paladinlandeffect)
doSendMagicEffect(nea, paladinlandeffect)
doSendMagicEffect(sea, paladinlandeffect)
doSendMagicEffect(swa, paladinlandeffect)

else if param.voca == 12 then
doSendMagicEffect(pos, knightfirsteffect)
doSendMagicEffect(pos, knightsecondeffect)

doSendDistanceShoot(pos, nha, knightflingeffect)
doSendDistanceShoot(pos, sha, knightflingeffect)
doSendDistanceShoot(pos, wha, knightflingeffect)
doSendDistanceShoot(pos, eha, knightflingeffect)
doSendDistanceShoot(pos, nwa, knightflingeffect)
doSendDistanceShoot(pos, nea, knightflingeffect)
doSendDistanceShoot(pos, sea, knightflingeffect)
doSendDistanceShoot(pos, swa, knightflingeffect)

doSendMagicEffect(nha, knightlandeffect)
doSendMagicEffect(sha, knightlandeffect)
doSendMagicEffect(wha, knightlandeffect)
doSendMagicEffect(eha, knightlandeffect)
doSendMagicEffect(nwa, knightlandeffect)
doSendMagicEffect(nea, knightlandeffect)
doSendMagicEffect(sea, knightlandeffect)
doSendMagicEffect(swa, knightlandeffect)
end
end
end

end
else
addEvent(superform2, manatimeinterval, param) -- call superform2 based on manatimeinterval settings --
end

end
end
function onEquip(cid, item, slot)
local param = {cid = cid, item = item, slot = slot}
local currentmana = getPlayerMana(cid) -- get players current mana --
if currentmana >= mananeededtoexec then  -- check to see if the players current mana is greater then or equal to mana needed to transform player --

local temp = getPlayerVocation(cid) -- get players voc and store it in temp --
if temp == 9 then
doPlayerSetVocation(cid,svoc) -- this will prevent people from loggin out and logging in with their new vocation being saved
else if temp == 10 then
doPlayerSetVocation(cid,dvoc)
else if temp == 11 then
doPlayerSetVocation(cid,pvoc)
else if temp == 12 then
doPlayerSetVocation(cid,kvoc)
end
end
end
end

local tempvoc = getPlayerVocation(cid) -- get players voc and store it in temp --
setPlayerStorageValue(cid, storage, getPlayerVocation(cid)) -- store players voc in storage for later use --
if (tempvoc == 1 or tempvoc == 5) then  -- these if and else if statements will check the current voc prior to transformation --
     doPlayerSetVocation(cid,sorcerervoc) -- if the players vocation == tempvoc then a new vocation will be assigned to the player --
else if (tempvoc == 2 or tempvoc == 6) then
     doPlayerSetVocation(cid,druidvoc)
else if (tempvoc == 3 or tempvoc == 7) then
     doPlayerSetVocation(cid,paladinvoc)
else if (tempvoc == 4 or tempvoc == 8) then
     doPlayerSetVocation(cid,knightvoc)
end
end
     end
     end
     
local pos = getPlayerPosition(cid)
doCreatureSay(cid, "Rutilus Vox", TALKTYPE_ORANGE_1) -- do animated text while transformation takes place --

param.crca = 1
addEvent(superform1, 1, param) -- call the function superform1 immediately --
end
return TRUE
end

function onDeEquip(cid, item, slot)
if isPlayer(cid) and getPlayerStorageValue(cid, 50781) == 1 then
old = getPlayerStorageValue(cid, storage) -- get players old vocation and assign it to old --
doPlayerSetVocation(cid,old)               -- set players vocation using old's value --
setPlayerStorageValue(cid, 18009, 0) -- remove vocation
-- removes the outfit, attributes, super haste, mana shield, hp/mp regeneration --
doTransformItem(item.uid, item.itemid - 11)
doRemoveCondition(cid, CONDITION_OUTFIT) 
doRemoveCondition(cid, CONDITION_ATTRIBUTES)
doRemoveCondition(cid, CONDITION_HASTE)
doRemoveCondition(cid, CONDITION_MANASHIELD)
doRemoveCondition(cid, CONDITION_REGENERATION)

local temptwo = getPlayerVocation(cid) -- get players voc and store it in temp --
if temptwo == 9 then
doPlayerSetVocation(cid,svoc) -- just incase they die and loose the ring they will not keep the new voc -
else if temptwo == 10 then
doPlayerSetVocation(cid,dvoc)
else if temptwo == 11 then
doPlayerSetVocation(cid,pvoc)
else if temptwo == 12 then
doPlayerSetVocation(cid,kvoc)
end
end
end
end
local pos = getCreaturePosition(cid)
doCreatureSay(cid, "So Powerfull", TALKTYPE_ORANGE_1) -- do animated text while de-transformation takes place --
setPlayerStorageValue(cid, 50781, 0)     -- removes storage value of transformation --
local voca = getPlayerVocation(cid) 

local nha = {x = pos.x, y = pos.y - 3, z = pos.z, stackpos = 255}
local sha = {x = pos.x, y = pos.y + 3, z = pos.z, stackpos = 255}
local wha = {x = pos.x - 3, y = pos.y, z = pos.z, stackpos = 255}
local eha = {x = pos.x + 3, y = pos.y, z = pos.z, stackpos = 255}

local nwa = {x = pos.x - 2, y = pos.y - 2, z = pos.z, stackpos = 255}
local nea = {x = pos.x + 2, y = pos.y - 2, z = pos.z, stackpos = 255}
local sea = {x = pos.x + 2, y = pos.y + 2, z = pos.z, stackpos = 255}
local swa = {x = pos.x - 2, y = pos.y + 2, z = pos.z, stackpos = 255}

if voca == 1 or voca == 5 then
doSendMagicEffect(pos, sorcerfirsteffect)
doSendMagicEffect(pos, sorcersecondeffect)

doSendDistanceShoot(pos, nha, sorcerflingeffect)
doSendDistanceShoot(pos, sha, sorcerflingeffect)
doSendDistanceShoot(pos, wha, sorcerflingeffect)
doSendDistanceShoot(pos, eha, sorcerflingeffect)
doSendDistanceShoot(pos, nwa, sorcerflingeffect)
doSendDistanceShoot(pos, nea, sorcerflingeffect)
doSendDistanceShoot(pos, sea, sorcerflingeffect)
doSendDistanceShoot(pos, swa, sorcerflingeffect)

doSendMagicEffect(nha, sorcerlandeffect)
doSendMagicEffect(sha, sorcerlandeffect)
doSendMagicEffect(wha, sorcerlandeffect)
doSendMagicEffect(eha, sorcerlandeffect)
doSendMagicEffect(nwa, sorcerlandeffect)
doSendMagicEffect(nea, sorcerlandeffect)
doSendMagicEffect(sea, sorcerlandeffect)
doSendMagicEffect(swa, sorcerlandeffect)

else if voca == 2 or voca == 6 then
doSendMagicEffect(pos, druidfirsteffect)
doSendMagicEffect(pos, druidsecondeffect)

doSendDistanceShoot(pos, nha, druidflingeffect)
doSendDistanceShoot(pos, sha, druidflingeffect)
doSendDistanceShoot(pos, wha, druidflingeffect)
doSendDistanceShoot(pos, eha, druidflingeffect)
doSendDistanceShoot(pos, nwa, druidflingeffect)
doSendDistanceShoot(pos, nea, druidflingeffect)
doSendDistanceShoot(pos, sea, druidflingeffect)
doSendDistanceShoot(pos, swa, druidflingeffect)

doSendMagicEffect(nha, druidlandeffect)
doSendMagicEffect(sha, druidlandeffect)
doSendMagicEffect(wha, druidlandeffect)
doSendMagicEffect(eha, druidlandeffect)
doSendMagicEffect(nwa, druidlandeffect)
doSendMagicEffect(nea, druidlandeffect)
doSendMagicEffect(sea, druidlandeffect)
doSendMagicEffect(swa, druidlandeffect)

else if voca == 3 or voca == 7 then
doSendMagicEffect(pos, paladinfirsteffect)
doSendMagicEffect(pos, paladinsecondeffect)

doSendDistanceShoot(pos, nha, paladinflingeffect)
doSendDistanceShoot(pos, sha, paladinflingeffect)
doSendDistanceShoot(pos, wha, paladinflingeffect)
doSendDistanceShoot(pos, eha, paladinflingeffect)
doSendDistanceShoot(pos, nwa, paladinflingeffect)
doSendDistanceShoot(pos, nea, paladinflingeffect)
doSendDistanceShoot(pos, sea, paladinflingeffect)
doSendDistanceShoot(pos, swa, paladinflingeffect)

doSendMagicEffect(nha, paladinlandeffect)
doSendMagicEffect(sha, paladinlandeffect)
doSendMagicEffect(wha, paladinlandeffect)
doSendMagicEffect(eha, paladinlandeffect)
doSendMagicEffect(nwa, paladinlandeffect)
doSendMagicEffect(nea, paladinlandeffect)
doSendMagicEffect(sea, paladinlandeffect)
doSendMagicEffect(swa, paladinlandeffect)

else if voca == 4 or voca == 8 then
doSendMagicEffect(pos, knightfirsteffect)
doSendMagicEffect(pos, knightsecondeffect)

doSendDistanceShoot(pos, nha, knightflingeffect)
doSendDistanceShoot(pos, sha, knightflingeffect)
doSendDistanceShoot(pos, wha, knightflingeffect)
doSendDistanceShoot(pos, eha, knightflingeffect)
doSendDistanceShoot(pos, nwa, knightflingeffect)
doSendDistanceShoot(pos, nea, knightflingeffect)
doSendDistanceShoot(pos, sea, knightflingeffect)
doSendDistanceShoot(pos, swa, knightflingeffect)

doSendMagicEffect(nha, knightlandeffect)
doSendMagicEffect(sha, knightlandeffect)
doSendMagicEffect(wha, knightlandeffect)
doSendMagicEffect(eha, knightlandeffect)
doSendMagicEffect(nwa, knightlandeffect)
doSendMagicEffect(nea, knightlandeffect)
doSendMagicEffect(sea, knightlandeffect)
doSendMagicEffect(swa, knightlandeffect)
end
end
end
end
end
end  