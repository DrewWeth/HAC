function onSay(cid, words, param, channel)
 
                if(param == '') then
                                return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "&#201; necess&#225;rio um param&#234;tro."), TRUE
                end
                
                local prm = string.explode(param, ",")
                local pos = getCreaturePosition(cid)
                local plr = getPlayerByName(prm[1])
                
                if (plr == nil) then
                  return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "O player est&#225; offline ou n&#227;o existe.")
                elseif (prm[2] == nil) then
                  return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "&#201; necess&#225;rio a mensagem ap&#243;s a v&#237;rgula.")  
                end
          
return doCreatureSay(plr, prm[2], 1), TRUE
end