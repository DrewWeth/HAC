local freezetime = 8    
 
local cooldown = 10 -- time to use again
 
local storage = 19002
 
 
local condition1 = createConditionObject(CONDITION_INFIGHT)
setConditionParam(condition1, CONDITION_PARAM_TICKS, -1)
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
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
    if exhaustion.get(cid,storage) then
        return doPlayerSendCancel(cid,"You can't use this yet.")
    end
 
if not isPlayer(cid) then
  return true
 end
 
    if getTileInfo(getThingPos(cid)).protection then
  return  doPlayerSendDefaultCancel(cid, RETURNVALUE_ACTIONNOTPERMITTEDINPROTECTIONZONE)
 else
  local s = getTileInfo(toPosition)
  if s.protection then
   return  doPlayerSendDefaultCancel(cid, RETURNVALUE_ACTIONNOTPERMITTEDINPROTECTIONZONE)
  elseif s.nopvp then
   return  doPlayerSendCancel(cid, "You can\'t use this here.")
  end
 end
local function removed(cid)
 return isPlayer(cid) and doCreatureSetNoMove(cid, false) and doRemoveCondition(cid,CONDITION_EXHAUST,1) and doRemoveCondition(cid,CONDITION_EXHAUST,2) and doRemoveCondition(cid, CONDITION_INFIGHT)
end
 
    if not isPlayer(itemEx.uid) or cid == itemEx.uid then
        return doPlayerSendCancel(cid,"You can only use this on another players.")
    end
 doAddCondition(itemEx.uid, condition1)
    exhaustion.set(cid,storage,cooldown)
    doCombat(cid, combat, numberToVariant(itemEx.uid))
    doCreatureSetNoMove(itemEx.uid, 1)
    countDown(freezetime , toPosition, 0, "melted", 5)
    addEvent(removed,freezetime*1000,itemEx.uid)
    return true
end