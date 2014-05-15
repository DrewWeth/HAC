-- >> Stuff --
local reqActnId = 11111 -- Action id the hookshot will work on
local maxDstnce = 5 -- Max hookshot stretch lenght (in SQ)
-- Stuff << --
 
function grappleAnim(parameters)
	if (parameters.counter == 10) then
		local fromPosition = getCreaturePosition(parameters.cid)
		doTeleportThing(parameters.cid, parameters.toPosition, FALSE)
		doSendMagicEffect(fromPosition, CONST_ME_POFF)
		return TRUE
	end
	parameters.counter = parameters.counter + 1
	doSendDistanceShoot(getCreaturePosition(parameters.cid), parameters.toPosition, CONST_ANI_THROWINGSTAR)
	doSendDistanceShoot(getCreaturePosition(parameters.cid), parameters.toPosition, CONST_ANI_ARROW)
	doSendDistanceShoot(getCreaturePosition(parameters.cid), parameters.toPosition, CONST_ANI_SMALLSTONE)
	addEvent(grappleAnim, 100, parameters)
end
 
local useWorms = FALSE
local waterIds = {493, 4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625}
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if isInArray(waterIds, itemEx.itemid) == TRUE then
		if itemEx.itemid ~= 493 then
			if useWorms == FALSE or useWorms == TRUE and doPlayerRemoveItem(cid, ITEM_WORM, 1) == TRUE then
				if math.random(1, (100 + (getPlayerSkill(cid, SKILL_FISHING) / 10))) <= getPlayerSkill(cid, SKILL_FISHING) then
					doPlayerAddItem(cid, ITEM_FISH, 1)
				end
				doPlayerAddSkillTry(cid, SKILL_FISHING, 1)
			end
		end
		doSendMagicEffect(toPosition, CONST_ME_LOSEENERGY)
		return TRUE
	end
	if (itemEx.actionid == reqActnId and getDistanceBetween(getCreaturePosition(cid), toPosition) <= maxDstnce) then
		doSendDistanceShoot(fromPosition, toPosition, CONST_ANI_HUNTINGSPEAR)
		doSendMagicEffect(toPosition, CONST_ME_BLOCKHIT)
		local parameters = {cid = cid, toPosition = toPosition, counter = 0}
		addEvent(grappleAnim, 100, parameters)
	else
		doPlayerSendCancel(cid, "Nothing to hook to in range.")
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
	end
	return TRUE
end