local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 43)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 28)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -30.0, -27, -30.0, -24)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 30)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -30.0, -27, -30.0, -24)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 5)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 3)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -30.0, -27, -30.0, -24)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 17)
setCombatParam(combat4, COMBAT_PARAM_DISTANCEEFFECT, 31)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -30.0, -27, -30.0, -24)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, 1)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 25)
setCombatParam(combat5, COMBAT_PARAM_DISTANCEEFFECT, 41)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -30.0, -27, -30.0, -24)

local combat6 = createCombatObject()
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat6, COMBAT_PARAM_EFFECT, 48)
setCombatParam(combat6, COMBAT_PARAM_DISTANCEEFFECT, 4)
setCombatFormula(combat6, COMBAT_FORMULA_LEVELMAGIC, -30.0, -27, -30.0, -24)

local combat7 = createCombatObject()
setCombatParam(combat7, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat7, COMBAT_PARAM_EFFECT, 20)
setCombatParam(combat7, COMBAT_PARAM_DISTANCEEFFECT, 14)
setCombatFormula(combat7, COMBAT_FORMULA_LEVELMAGIC, -30.0, -27, -30.0, -24)

function onUseWeapon(cid, var)
  doCreatureAddHealth(cid, 1 + getPlayerMagLevel(cid) * getPlayerLevel(cid) * 0.005)
  doSendAnimatedText(getCreaturePosition(cid), '+'..(1 + getPlayerMagLevel(cid) * getPlayerLevel(cid) * 0.005), COLOR_89)

  lucky = math.random(1, 7)
  if lucky == 1 then
      return doCombat(cid, combat, var)
  elseif lucky == 2 then
      return doCombat(cid, combat2, var)
  elseif lucky == 3 then
      return doCombat(cid, combat3, var)
  elseif lucky == 4 then
      return doCombat(cid, combat4, var)
  elseif lucky == 5 then
      return doCombat(cid, combat5, var)
  elseif lucky == 6 then
      return doCombat(cid, combat6, var)
  elseif lucky == 7 then
      return doCombat(cid, combat7, var)
  end
end