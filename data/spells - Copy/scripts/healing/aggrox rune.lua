local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 39)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
--setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 1.3, -30, 1.7, 0)

function onGetFormulaValues(cid, level, maglevel)
	min = (level * 1 + maglevel * 5) * 2.3 - 25
	max = (level * 1 + maglevel * 5) * 2.8
	
	if min < 20000 then
		min = 40000
	end

	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
	doSendAnimatedText(getPlayerPosition(cid), "HP", math.random(1, 255))
        return doCombat(cid, combat, var)
end
