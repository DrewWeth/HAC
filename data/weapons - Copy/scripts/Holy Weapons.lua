local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0, 0, 0, -150)
 
function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end