local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_SMALLCLOUDS)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DEATH)

local condition = createConditionObject(CONDITION_CURSED)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1, 3000, -45)
addDamageCondition(condition, 1, 3000, -40)
addDamageCondition(condition, 1, 3000, -36)
addDamageCondition(condition, 1, 3000, -35)
addDamageCondition(condition, 1, 3000, -34)
addDamageCondition(condition, 2, 3000, -33)
addDamageCondition(condition, 2, 3000, -32)
addDamageCondition(condition, 2, 3000, -31)
addDamageCondition(condition, 2, 3000, -30)
addDamageCondition(condition, 3, 3000, -29)
addDamageCondition(condition, 3, 3000, -25)
addDamageCondition(condition, 3, 3000, -24)
addDamageCondition(condition, 4, 3000, -23)
addDamageCondition(condition, 4, 3000, -20)
addDamageCondition(condition, 5, 3000, -19)
addDamageCondition(condition, 5, 3000, -15)
addDamageCondition(condition, 6, 3000, -10)
addDamageCondition(condition, 10, 3000, -5)
setCombatCondition(combat, condition)


function onCastSpell(cid, var)
	local storage = 23005
	local spellname = "Curse"
	local time = 50

        if exhaustion.check(cid, storage) == false then
                exhaustion.set(cid, storage, time)
                return doCombat(cid, combat, var)
        else
                doPlayerSendCancel(cid, "You are exhausted in " .. spellname .. " for: " ..exhaustion.get(cid, storage).." seconds.")
        end
end