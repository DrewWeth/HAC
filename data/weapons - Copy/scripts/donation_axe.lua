local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 43)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 254)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -60.0, -30, -40.0, -25)

local area = createCombatArea( { {1, 1, 1}, {1, 3, 1}, {1, 1, 1} } )
setCombatArea(combat, area)

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end
