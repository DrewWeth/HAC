

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SNOWBALL)

	local condition1 = createConditionObject(CONDITION_INFIGHT)
	local condition2 = createConditionObject(CONDITION_EXHAUST)
	local condition3 = createConditionObject(CONDITION_MUTED)
	setConditionParam(condition1, CONDITION_PARAM_TICKS, 400)
	setConditionParam(condition2, CONDITION_PARAM_TICKS, 400)
	setConditionParam(condition3, CONDITION_PARAM_TICKS, 400)

local condition = createConditionObject(CONDITION_FREEZING)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
setCombatCondition(combat, condition)

 function onTargetCreature(cid, target)
	doSetItemOutfit(target, 7171, 2500)
end

setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")

function onCastSpell(cid, var)
	local target = getCreatureTarget(cid)
	local targetpos = getCreaturePosition(target)
	local parameters = { cid = cid, var = var, target = getCreatureTarget(cid), targetpos = getCreaturePosition(target)}
	
		doSendMagicEffect(targetpos, 52)
		doSendAnimatedText(targetpos, 'Frozen!', 144)
		doAddCondition(target, condition1)
		doAddCondition(target, condition2)
		doAddCondition(target, condition3)
				if isPlayer(target) 
				then doCreatureSetNoMove(target, true) 
				else doChangeSpeed(parameters.target, -getCreatureSpeed(target)) 
				end
		
			doAddCondition(cid, condition)
			an = getThingPos(cid) 
                addEvent(doCreatureSetNoMove, 0, cid, TRUE)
        addEvent(doCreatureSetNoMove, paralyze, cid, FALSE)
		return doCombat(cid, combat, var)
		
end

