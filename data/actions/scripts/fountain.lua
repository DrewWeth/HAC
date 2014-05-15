local exhaustionStorage = 2555 -- Storage value for exhastion
local HPamount = 999999999 -- amount of HP healed
local MPamount = 999999999 -- amount of mana healed
local time = 1 -- Time of exhaustion (in seconds)

function onUse(cid, item, frompos, topos)
if not(exhaustion.check(cid,exhaustionStorage)) then
        doCreatureAddHealth(cid, HPamount)
        doCreatureAddMana(cid, MPamount)
        doSendMagicEffect(getCreaturePosition(cid),1)
         exhaustion.set(cid,exhaustionStorage,time)
        doSendAnimatedText(getPlayerPosition(cid), "Mana + HP", TEXTCOLOR_TEAL)
            return true
else
        doPlayerSendCancel(cid, "Can't drink any more water for now.")
        doSendMagicEffect(getCreaturePosition(cid),2)
end
return false
end