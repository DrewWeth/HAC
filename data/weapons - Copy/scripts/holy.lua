local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -30.0, -27, -30.0, -24)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
setConditionFormula(condition, -2.9, 0, -2.9, 0)
setCombatCondition(combat, condition)

local area = createCombatArea({
{1, 0, 1},
{0, 3, 0},
{1, 0, 1}
})
setCombatArea(combat, area)

function onUseWeapon(cid, var)
return doCombat(cid, combat, var)


end