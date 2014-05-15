local exhaust = createConditionObject(CONDITION_EXHAUST)
setConditionParam(exhaust, CONDITION_PARAM_TICKS, 5000)
 
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISON)
 
local condition = createConditionObject(CONDITION_DRUNK)
setConditionParam(condition, CONDITION_PARAM_TICKS, 10000)
setCombatCondition(combat, condition)
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
		if not hasCondition(cid, CONDITION_EXHAUST) then 
			local target = getCreatureTarget(cid)
			if target ~= 0 then
				doAddCondition(cid, exhaust)
				doCombat(cid, combat, numberToVariant(target))
				doRemoveItem(item.uid, 1)
			else
				doPlayerSendDefaultCancel(cid, RETURNVALUE_YOUCANONLYUSEITONCREATURES)
			end
		else
			doPlayerSendDefaultCancel(cid, RETURNVALUE_YOUAREEXHAUSTED)
	end
	return true
end