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
 if isPlayerPzLocked(cid) then
    doPlayerSendCancel(cid,"You Cannot Teleport Right After A Battle!.")
 else
    countDown(10, getThingPos(cid), 5, "Teleported!", 1)
    doCreatureSetNoMove(cid, 1)
    addEvent(doTeleportThing,10000,cid,getTownTemplePosition(getPlayerTown(cid)),FALSE)
    addEvent(doCreatureSetNoMove,10000,cid, 0) 
    addEvent(doSendMagicEffect,10004,getTownTemplePosition(getPlayerTown(cid)), 10) 
  end
return true
end