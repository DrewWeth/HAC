function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
local v,p = getThingPos(cid),{x=1989,y=1989,z=6}	
	if isPlayer(cid) then
		if getCreatureStorage(cid, 85987) >= 60 then
			if getPlayerLevel(cid) >= 0 then 
				doTeleportThing(cid,p)
				doSendMagicEffect(p,31)
                                doCreatureSay(cid,"SUPER SPAWN!",19)
			else
				doTeleportThing(cid,fromPosition)
				doSendMagicEffect(p,10)
				doPlayerSendTextMessage(cid,27,'Only players of 10st rebirth and higher are allowed to pass.')
			end
		else
			doTeleportThing(cid,fromPosition)
			doSendMagicEffect(p,10)
                        doCreatureSay(cid,"You Need 60 Rebirth To enter!",19)
			doPlayerSendTextMessage(cid,27,'Only players of 60st rebirth higher are allowed to pass.')
		end
	end
	return true
end