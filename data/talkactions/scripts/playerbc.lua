--- Config ---
local levelReq = 100 -- minimum level requirement
local minChars = 3 -- minimum characters in message
local basePrice = 50 -- Base price, will be multiplied by the player's level.
local group_id = 2 -- players with this group_id or higher won't be able to use this command
local exhaustionInSeconds = 60
local a = math.floor(exhaustionInSeconds/60)
local storage = 73210


function onSay(cid, words, param)
	local letterPrice = basePrice + getPlayerLevel(cid) * 2
	local broadcastPrice = letterPrice * param:len()
	if(getPlayerLevel(cid) < levelReq) then
		return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Sorry, you need to be atleast level " .. levelReq .. " to use this command.")
	elseif(exhaustion.check(cid, storage) == TRUE) then
		return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry, you need to wait before broadcasting another message.")
	elseif(param:len() < minChars) then
		return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry, you need to enter atleast " .. minChars .. " characters. Each character will cost you " .. letterPrice .. " gold coins.")
	elseif(getPlayerGroupId(cid) >= group_id) then
		return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry, staff members do not need to broadcast messages with this command.")
	elseif(doPlayerRemoveMoney(cid, broadcastPrice) == FALSE) then
		return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry, you have not enough money. This message would have costed you " .. broadcastPrice .. " gold coins.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Broadcast successfully sent. Your message contained " .. param:len() .. " characters and costed you " .. broadcastPrice .. " gold coins. You may broadcast again in " .. a .. " minute.")
		broadcastMessage(getCreatureName(cid) .. " [" .. getPlayerLevel(cid) .. "]: " .. param, MESSAGE_STATUS_WARNING)
		exhaustion.set(cid, storage, exhaustionInSeconds)
	end
end
