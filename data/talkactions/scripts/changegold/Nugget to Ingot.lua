function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2157,100) then    
         doPlayerAddItem(cid,9971,1)    
         doSendMagicEffect(getPlayerPosition(cid),12)    
         doPlayerSendTextMessage(cid,22,"You have changed 100 Gold nuggets to 1 Gold Ingot!")
else    
         doPlayerSendCancel(cid,"You don't have enough money.")    
         doSendMagicEffect(getPlayerPosition(cid),2)

end
return TRUE 
end