local config = {
	temporaryArea = {
		{x = 1796, y = 1812, z = 7}, -- northwest corner of area where players must stand in order to join the event
		{x = 1800, y = 1814, z = 7} -- south east corner
	},
	arenaArea = {
		{x = 1802, y = 1808, z = 7}, -- nw corner of arena
		{x = 1815, y = 1818, z = 7}, -- se corner of arena
		{x = 1808, y = 1813, z = 7} -- center of arena
	},
	minPlayers = 2, -- min players required to start the battle
	prize = {2160,100}, {5467} -- rewards
}
 
function onThink(interval, lastExecution, thinkInterval)
	local players, arenaPlayers = {}, {}
	for x = (config.temporaryArea)[1].x, (config.temporaryArea)[2].x do
		for y = (config.temporaryArea)[1].y, (config.temporaryArea)[2].y do
			for z = (config.temporaryArea)[1].z, (config.temporaryArea)[2].z do
				if(isPlayer(getTopCreature({x = x, y = y, z = z}).uid)) then
					table.insert(players, getTopCreature({x = x, y = y, z = z}).uid)
				end
			end
		end
	end
	for x = (config.arenaArea)[1].x, (config.arenaArea)[2].x do
		for y = (config.arenaArea)[1].y, (config.arenaArea)[2].y do
			for z = (config.arenaArea)[1].z, (config.arenaArea)[2].z do
				if(isPlayer(getTopCreature({x = x, y = y, z = z}).uid)) then
					table.insert(arenaPlayers, getTopCreature({x = x, y = y, z = z}).uid)
				end
			end
		end
	end
	if(table.maxn(arenaPlayers) == 1) then
		doTeleportThing(arenaPlayers[1], getPlayerMasterPos(arenaPlayers[1]))
		doSendMagicEffect(getPlayerMasterPos(arenaPlayers[1]), CONST_ME_TELEPORT)
		doPlayerSendTextMessage(arenaPlayers[1], MESSAGE_STATUS_CONSOLE_BLUE, "You win a battle and recived your reward.")
		doPlayerAddItem(arenaPlayers[1], (config.prize)[math.random(1, table.maxn(config.prize))], 1)
	elseif(table.maxn(arenaPlayers) < 1) then
		if(table.maxn(players) >= config.minPlayers) then
			for i = 1, config.minPlayers do
				doTeleportThing(players[i], (config.arenaArea)[3])
				doSendMagicEffect((config.arenaArea)[3], CONST_ME_TELEPORT)
				doPlayerSendTextMessage(players[i], MESSAGE_STATUS_WARNING, "The battle begins. Survive for glory!")
			end
		end
	end
	return true
end