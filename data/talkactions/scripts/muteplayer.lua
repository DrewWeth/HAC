local v = {} 
for k = 1, 100 do 
table.insert(v, createConditionObject(CONDITION_MUTED)) 
setConditionParam(v[k], CONDITION_PARAM_TICKS, k*60*1000) 
end 
function onSay(cid, words, param) 
if (words == "/mute") then 
local t = string.explode(param, ",")   
if param == '' then  doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Invalid param specified.")  return true end   
local player,time,pid = getPlayerByName(t[1]),t[2],getPlayerByNameWildcard(t[1])   
if(not pid or (isPlayerGhost(pid) and getPlayerGhostAccess(pid) > getPlayerGhostAccess(cid))) then   
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player with this name doesn\'t exist or is offline.")  return TRUE  end 
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You muted Player "..t[1].." for "..time.." minutes.") 
doAddCondition(player, v[tonumber(time)]) 
setPlayerStorageValue(player, 90000, os.time()+time*60) 
doPlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "You have been muted for "..time.." minutes.") 
elseif (words == "/desmute") then 
if param == '' then  doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Invalid param specified.")  return true end   
local player = getPlayerByNameWildcard(param) 
if(not player)then doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player not found.") return true end 
if getCreatureCondition(player, CONDITION_MUTED) == false then doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "This player is not muted.") return true end 
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You desmuted player "..param..".") 
doRemoveCondition(player, CONDITION_MUTED) 
setPlayerStorageValue(player, 90000, -1) 
doPlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "You have been desmuted.") 
end 
return true   
end  