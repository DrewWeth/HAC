local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

function onCastSpell(cid, var)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}, 14)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x-3, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}, 14)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}, 14)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y-3, z=getCreaturePosition(cid).z}, 14)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y-3, z=getCreaturePosition(cid).z}, 39)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x-3, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}, 39)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x-3, y=getCreaturePosition(cid).y-3, z=getCreaturePosition(cid).z}, 39)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}, 39)

doCreatureAddMana(cid, 99999999)---- how much it mana heal
doCreatureAddHealth(cid, 99999999) ---- how much it HP heal
doSendAnimatedText(getCreaturePosition(cid), '99999999', TEXTCOLOR_RED)
doSendMagicEffect(getCreaturePosition(cid), 8)
    return doCombat(cid, combat, var)
end