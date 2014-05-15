local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_BLOCKARMOR, true)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)
setCombatParam(combat1, COMBAT_PARAM_USECHARGES, true)

function onGetFormulaValues(cid, level, skill, attack, factor)
	local skillTotal, levelTotal = skill * 5 + attack * 4, level * 6
	return -(skillTotal / 1 + levelTotal), -(skillTotal + levelTotal)
end

setCombatCallback(combat1, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
        if exhaustion.check(cid, 23000) == false then
                exhaustion.set(cid, 23000, 2)
                return doCombat(cid, combat1, var)
        else
                doPlayerSendCancel(cid, "You are exhausted in annihilation for: " ..exhaustion.get(cid, 23000).." seconds.")
        end
end