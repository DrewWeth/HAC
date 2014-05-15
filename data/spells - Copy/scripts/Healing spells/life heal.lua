local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 35)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setHealingFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 40000, 40000, 40001, 45000)


function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
