local exhausted = createConditionObject(CONDITION_EXHAUST)
setConditionParam(exhausted, CONDITION_PARAM_TICKS, getConfigInfo('timeBetweenExActions') - 100)
setConditionParam(exhausted, CONDITION_PARAM_SUBID, EXHAUST_HEALING)
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if hasCondition(cid, CONDITION_EXHAUST, EXHAUST_HEALING) then
		doPlayerSendDefaultCancel(cid, RETURNVALUE_YOUAREEXHAUSTED)
	elseif not isPlayer(itemEx.uid) then
		doPlayerSendCancel(cid, 'You can only use this rune on players.')
	elseif getCreatureHealth(itemEx.uid) == getCreatureMaxHealth(itemEx.uid) then
		doPlayerSendCancel(cid, (itemEx.uid == cid and 'You already have' or getCreatureName(itemEx.uid) .. ' already has') .. ' full health.')
	else
		local lvl, mag, min, max = getPlayerLevel(cid), getPlayerMagLevel(cid)
		if isSorcerer(cid) or isDruid(cid) then
			min = lvl * 1.0 + mag * 1.0
			max = lvl * 1.0 + mag * 1.0
		elseif isPaladin(cid) then
			min = lvl * 1.0 + mag * 1.0
			max = lvl * 1.0 + mag * 1.0
		elseif isKnight(cid) then
			min = lvl * 0.5 + mag * 0.5
			max = lvl * 1.0 + mag * 1.0
		end
 
		local rand = math.random(min, max)
 
		rand = math.min(400000, rand)
		rand = math.max(1000000, rand)
 
		doCreatureAddHealth(itemEx.uid, rand)
		doSendMagicEffect(toPosition, CONST_ME_MAGIC_BLUE)
		doAddCondition(cid, exhausted)
		doCreatureSay(itemEx.uid, "Donator UH", TALKTYPE_ORANGE_1)
	end
	return true
end