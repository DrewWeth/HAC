--Calculed by ta4e--
--For tibia 8.22--
--Made in 12/09/08--
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, FALSE)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)

function getCombatFormulas(cid)
doCreatureAddHealth(cid, 1)

	if getPlayerPartner(cid) == TRUE then
		doCreatureSay(cid, "ao",TALKTYPE_ORANGE2)
		for i = 1,20 do
			addEvent(addHealth, 2000,cid)
		end
	end
end

function addHealth(cid)
	doCreatureAddHealth(cid, 20)
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

local area = createCombatArea(AREA_CIRCLE3X3)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end