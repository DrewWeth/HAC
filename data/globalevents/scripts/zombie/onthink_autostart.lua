local autoStartInterval = 60 -- time between arenas in minutes, default 60 = 1 hour
 
function onThink(interval, lastExecution, thinkInterval)
	if(getStorage(ZE_STATUS) ~= 5) then
		if(getStorage(45267)+autoStartInterval*60 <= os.time() and getStorage(45268) ~= 1) then
			doSetStorage(45268, 1)
			removeZombiesEventBlockEnterPosition()
			doSetStorage(ZE_STATUS, 1)
			doBroadcastMessage("Zombie Arena Event teleport will be opened for 5 minutes. We are waiting for " .. getZombiesEventPlayersLimit() - #getZombiesEventPlayers() .. " players to start.")
		elseif(getStorage(45267)+autoStartInterval*60+120 <= os.time() and getStorage(45268) == 1) then
			addZombiesEventBlockEnterPosition()
			doSetStorage(45268, 0)
			doSetStorage(ZE_STATUS, 2)
			doSetStorage(45267, os.time())
			doBroadcastMessage("Zombie Arena Event started.")
		end
	end
	return true
end