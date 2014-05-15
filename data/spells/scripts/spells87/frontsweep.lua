local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat, COMBAT_PARAM_USECHARGES, true)

local area = createCombatArea( {{0, 1, 3, 1, 0},
				{0, 0, 1, 0, 0},
				{0, 0, 0, 0, 0}})
setCombatArea(combat, area)

function onGetFormulaValues(cid, level, skill, attack, factor)
	local skillTotal, levelTotal = skill *2 + attack * 1.5, level / 5
	return -(skillTotal * 2 + (levelTotal * 1.5)), -(skillTotal * 2 + (levelTotal * 2))
end
setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
	local storage = 23008
	local spellname = "Front Sweep"
	local time = 3

        if exhaustion.check(cid, storage) == false then
                exhaustion.set(cid, storage, time)
                return doCombat(cid, combat, var)
        else
                doPlayerSendCancel(cid, "You are exhausted in " .. spellname .. " for: " ..exhaustion.get(cid, storage).." seconds.")
        end
end
