-- Credits StreamSide and Empty
function onThink(cid, item, fromPosition, toPosition)

	for _, name in ipairs(getOnlinePlayers()) do
		local player = getPlayerByName(name)
		if getPlayerStorageValue(player,11551) > 1 then
			setPlayerStorageValue(player,11551,getPlayerStorageValue(player) - 1)
		end
	end
end