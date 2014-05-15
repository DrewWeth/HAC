local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_MANADRAIN)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 1)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setHealingFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 400000, 400000, 400010, 450000)


function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
