local freezetime = 3    
 
local cooldown = 20 -- time to use again
 
local storage = 19002
 
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ICE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
 
local exhaust = createConditionObject(CONDITION_EXHAUST)
setConditionParam(exhaust, CONDITION_PARAM_SUBID, 1)
setConditionParam(exhaust, CONDITION_PARAM_TICKS, -1)
setCombatCondition(combat, exhaust)
 
local exhaustt = createConditionObject(CONDITION_EXHAUST)
setConditionParam(exhaustt, CONDITION_PARAM_SUBID, 2)
setConditionParam(exhaustt, CONDITION_PARAM_TICKS, -1)
setCombatCondition(combat, exhaustt)
 
function countDown(number, pos, effect, msgonend, effectonend)
  local n = number
       for i = 1, number do
           addEvent(doSendAnimatedText,i* 1000, pos, n > 1 and n.."" or msgonend .."", n < 6 and TEXTCOLOR_RED or TEXTCOLOR_GREEN)
           addEvent(doSendMagicEffect,i* 1000, pos, n > 1 and effect or effectonend )
              n = n -1
       end
      n = number
return true
end
 
function removed(cid)
    doCreatureSetNoMove(cid, 0)
    doRemoveCondition(cid,CONDITION_EXHAUST,1)
    doRemoveCondition(cid,CONDITION_EXHAUST,2)
end
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
    if exhaustion.get(cid,storage) then
        return doPlayerSendCancel(cid,"You can't use this yet.")
    end
 
        if getTilePzInfo(toPosition) == true then
                   return doPlayerSendCancel(cid, "You cant use in pz.")
        end

    if not isPlayer(itemEx.uid) or cid == itemEx.uid then
        return doPlayerSendCancel(cid,"You can only use this on another players.")
    end
 
    doSendAnimatedText(getThingPos(itemEx.uid),"Freezed!", TEXTCOLOR_BLUE)
    exhaustion.set(cid,storage,cooldown)
    doCombat(cid, combat, numberToVariant(itemEx.uid))
    doCreatureSetNoMove(itemEx.uid, 1)
    countDown(freezetime , toPosition, 0, "melted", 5)
    addEvent(removed,freezetime*1000,itemEx.uid)
    return true
end 