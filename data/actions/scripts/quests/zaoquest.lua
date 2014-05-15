function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.actionid == 4330) then
       doTeleportThing(getTopCreature({x=33019,y=31533,z=6}).uid, {x=33018,y=31533,z=4})
	elseif (item.actionid == 4331) then
		doTeleportThing(getTopCreature({x=33018,y=31533,z=4}).uid, {x=33019,y=31533,z=6})
	end
	return true
end