function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2160,100) then    
         doPlayerAddItem(cid,2157,1)    
         doSendMagicEffect(getPlayerPosition(cid),12)    
         doPlayerSendTextMessage(cid,21,"You have changed 100 Crystal coins to 1 Gold nugget!")
else    
         doPlayerSendCancel(cid,"You don't have enough money.")    
         doSendMagicEffect(getPlayerPosition(cid),2)

end
return TRUE 
end