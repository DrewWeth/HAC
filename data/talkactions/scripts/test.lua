local  m = { 
["king"] = {look = 332 , storage = 1000}, ---this for first quest
["fire"] = {look = 49 , storage = 1001} ---this for second quest
} 
  local cancelmsg = "You must use the item frist"
 function onSay(cid, words, param)
  
  local monster = m[param]
    if(param == '') then
      doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
     return true
    end

    if(not monster) then
         doPlayerSendCancel(cid,"Not installed in script.")
         return true
         end
    if getPlayerStorageValue(cid,monster.storage) < 0 then
	 doPlayerSendCancel(cid,cancelmsg)
	 return true 
	 end
     local tmp = getCreatureOutfit(cid)
        tmp.lookType = monster.look
      doCreatureChangeOutfit(cid, tmp)
          return true
          end