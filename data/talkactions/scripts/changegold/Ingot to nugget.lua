function onSay(cid, words, param)
if doPlayerRemoveItem(cid,9971,1) then    
         doPlayerAddItem(cid,2157,100)    
         doSendMagicEffect(getPlayerPosition(cid),12)    
         doPlayerSendTextMessage(cid,22,"You have changed 1 Gold Ingot to 100 Gold nuggets!")
else    
         doPlayerSendCancel(cid,"You don't have enough money.")    
         doSendMagicEffect(getPlayerPosition(cid),2)

end
return TRUE 
end