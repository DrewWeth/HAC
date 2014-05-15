local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

function onCastSpell(cid, var)
doPlayerAddMana(cid, 40000)---- how much it heal .
doSendMagicEffect(getCreaturePosition(cid), 1)
doCreatureSay(cid, "Infinite X-Great Mana Rune", TALKTYPE_ORANGE_1)
doPlayerSendCancel(cid, text) 
end