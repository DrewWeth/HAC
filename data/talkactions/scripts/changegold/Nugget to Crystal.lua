function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2157,1) then    
         doPlayerAddItem(cid,2160,100)     
         doSendMagicEffect(getPlayerPosition(cid),12)    
         doPlayerSendTextMessage(cid,22,"You have changed 1 Gold nugget to 100 Crystal coins!")
else    
         doPlayerSendCancel(cid,"You don't have enough money.")    
         doSendMagicEffect(getPlayerPosition(cid),2)

end
return TRUE 
end