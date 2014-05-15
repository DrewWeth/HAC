local corpse_ids = {
[0] = 3065, -- female
[1] = 3058 -- male
}
function onPrepareDeath(cid, deathList)
if getPlayerSlotItem(cid, CONST_SLOT_NECKLACE).itemid == 10134 then

doCreatureSetDropLoot(cid, false)

doSendMagicEffect(getThingPos(cid), CONST_ME_HOLYAREA)
local corpse, killers = doCreateItem(corpse_ids[getPlayerSex(cid)], 1, getThingPos(cid)), ""	
for i = 1, math.min(getConfigInfo('deathAssistCount') + 1, #deathList) do
killers = killers .. (i == 1 and "" or ", ") .. (isMonster(deathList[i]) and "a " or "") .. getCreatureName(deathList[i])
end
doItemSetAttribute(corpse, "specialdescription", "You recognize " .. getCreatureName(cid) .. ". " .. (getPlayerSex(cid) == 0 and "She" or "He") .. " was killed by " .. killers .. ".")
end
return true
end