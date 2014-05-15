local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 65)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 35)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -900, 0, -900, 0)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
--setConditionParam(condition, CONDITION_PARAM_SPEED, -250)
setConditionFormula(condition, -0.9, 0, -0.9, 0)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
