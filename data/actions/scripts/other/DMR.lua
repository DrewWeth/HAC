local exhausted = createConditionObject(CONDITION_EXHAUST)
setConditionParam(exhausted, CONDITION_PARAM_TICKS, (getConfigInfo('timeBetweenExActions') - 500))

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if hasCondition(cid, CONDITION_EXHAUST_HEAL) then
		return doPlayerSendDefaultCancel(cid, RETURNVALUE_YOUAREEXHAUSTED)
	end
	
	return doPlayerAddMana(itemEx.uid, 500000) and doAddCondition(cid, exhausted) and doSendMagicEffect(toPosition, CONST_ME_MAGIC_BLUE) and doSendAnimatedText(getThingPos(cid), "Donator Mr", TEXTCOLOR_BLUE)
end