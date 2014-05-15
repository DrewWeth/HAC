local arenas = {
	[8000] = {
		fromPos ={
			{x = 2015, y = 1986, z = 8}, --player 1 start pos
			{x = 2015, y = 1988, z = 8} --player 2 start pos
											--you can add how much you want, there are no limits
		},
		toPos = {
			{x = 2018, y = 1987, z = 9}, --player 1 teleport position
			{x = 2025, y = 1987, z = 9} --player 2 teleport position
											--you can add how much you want, there are no limits
		}
	}
}
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.itemid == 1946) then
		doTransformItem(item.uid, 1945)
		return TRUE
	end
 
	local arena = arenas[item.uid]
	if(not arena) then
		return FALSE
	end
 
	local players = {}
	for _, pos in pairs(arena.fromPos) do
		pos.stackpos = STACKPOS_TOP_CREATURE
		local tmp = getThingfromPos(pos).uid
		if(tmp > 0 and isCreature(tmp) == TRUE) then
			table.insert(players, tmp)
		end
	end
 
	if(table.maxn(players) < table.maxn(arena.fromPos)) then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You need Someone to duel.")
		return TRUE
	end
 
	for i, pid in pairs(players) do
		doSendMagicEffect(arena.fromPos[i], CONST_ME_POFF)
		doTeleportThing(pid, arena.toPos[i])
		doSendMagicEffect(arena.toPos[i], CONST_ME_TELEPORT)
		doPlayerSendTextMessage(pid, MESSAGE_INFO_DESCR, "FIGHT!")
	end
 
	return TRUE
end