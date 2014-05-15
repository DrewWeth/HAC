local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

function onCastSpell(cid, var)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}, 4)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x-3, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}, 4)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}, 4)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y-3, z=getCreaturePosition(cid).z}, 4)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y-3, z=getCreaturePosition(cid).z}, 3)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x-3, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}, 3)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x-3, y=getCreaturePosition(cid).y-3, z=getCreaturePosition(cid).z}, 3)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}, 3)
doPlayerAddMana(cid, 99999999)---- how much it heal .
doSendMagicEffect(getCreaturePosition(cid), 1)
doCreatureSay(cid, "Donation mana", TALKTYPE_ORANGE_1)
doPlayerSendCancel(cid, text) 
end
