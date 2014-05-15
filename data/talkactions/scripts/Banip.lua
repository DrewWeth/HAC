function onSay(cid, words, param)

if(param == "") then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
return TRUE
end

local pid = getPlayerByNameWildcard(param)
local tmp = getPlayerIp(pid)
if(doAddIpBanishment(tmp) or pid == 0 or (isPlayerGhost(pid) == TRUE)) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. param .. " is not currently online.")
end

if isPlayerGhost(pid) == FALSE then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, getCreatureName(pid) .. " has been banned.")
doAddIpBanishment(tmp, 30 * 24 * 60 * 60)
doRemoveCreature(pid)
end
return TRUE
end