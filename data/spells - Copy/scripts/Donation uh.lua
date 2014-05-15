local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_STUN)
setCombatParam(combat, COMBAT_PARAM_DIFFERENTAREADAMAGE, 29)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
--setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 500.3, -500, 500.3, 500)

function onGetFormulaValues(cid, level, maglevel)
	min = (level * 1 + maglevel * 5) * 500.20 - 500
	max = (level * 1 + maglevel * 5) * 500.50
	
	if min < 2500 then
		min = 2500
	end

	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}, 10)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x-3, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}, 10)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}, 10)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y-3, z=getCreaturePosition(cid).z}, 10)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y-3, z=getCreaturePosition(cid).z}, 28)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x-3, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}, 28)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x-3, y=getCreaturePosition(cid).y-3, z=getCreaturePosition(cid).z}, 28)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}, 28)
doCreatureSay(cid, "Donation UH", TALKTYPE_ORANGE_1)
	return doCombat(cid, combat, var)
end


