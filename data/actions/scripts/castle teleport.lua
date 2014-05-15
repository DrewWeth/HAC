local c = {
               pos = {x = 10335, y = 10075, z = 7},
			}
function onUse (cid, item, frompos, topos)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}, 28)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x-3, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}, 28)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}, 28)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y-3, z=getCreaturePosition(cid).z}, 28)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y-3, z=getCreaturePosition(cid).z}, 34)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x-3, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}, 34)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x-3, y=getCreaturePosition(cid).y-3, z=getCreaturePosition(cid).z}, 34)
doSendDistanceShoot(getCreaturePosition(cid), {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}, 34)
 if isPlayerPzLocked(cid) then
    doPlayerSendCancel(cid,"You Cannot Teleport in PZ!.")
 else
    doTeleportThing(cid,c.pos) 
    doSendMagicEffect(c.pos,10)
	doRemoveItem(item.uid)
	doPlayerAddItem(cid,7722)
	doCreatureSay(cid, "You just teleported your self to castle city and gained a house teleport scroll" ,19)
	doSendAnimatedText(getPlayerPosition(cid), "Castle!", TEXTCOLOR_RED)
  end
  return true
end
