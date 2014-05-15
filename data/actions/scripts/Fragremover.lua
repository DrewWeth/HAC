local skulls,s = {SKULL_YELLOW = "yellow", SKULL_GREEN = "green", SKULL_WHITE = "white"},50000
function onUse(cid, item, fromPosition, itemEx, toPosition)
	local txt = "Your " .. (getCreatureSkullType(cid) == SKULL_NONE and "don't have any" or "can't") .. " " .. (getCreatureSkullType(cid) == skulls[1] and skulls[2] or "") .. " skull!"
	if getCreatureSkullType(cid) == skulls[1] then return doPlayerSendTextMessage(cid, 27, txt) end
		if getPlayerStorageValue(cid,s) < 1 then
			doCreatureSetSkullType(cid, SKULL_NONE)
			doPlayerSendTextMessage(cid, 27, (getCreatureSkullType(cid) == SKULL_RED and "Red" or "Black") .. " skull has been removed!")
			db.executeQuery("UPDATE `killers` SET `unjustified` = 0 WHERE `id` IN (SELECT `kill_id` FROM `player_killers` WHERE `player_id` = " .. getPlayerGUID(cid) .. ")")
		else
			doPlayerSendCancel(cid,'You can only use this once.')
		end
	return true
end