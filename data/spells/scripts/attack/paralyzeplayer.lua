-- Paralyze player by Arthur, aka artofwork
-- this spell is an attack which works like exori vis
-- it doesn't cause damage to the player but it does 
-- reduce their speed to -1000
-- basically making them move like molasses
-- the duration of this buff is 1 minute
 
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 69)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 30)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, TRUE)
 
local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 10 * 1000)
setConditionParam(condition, CONDITION_PARAM_SPEED, -500000)
setConditionParam(condition, CONDITION_PARAM_BUFF, TRUE)
setCombatCondition(combat, condition)
 
-- remove unnecessary conditions
 
function onCastSpell(cid, var)
          return doCombat(cid, combat, var)
end