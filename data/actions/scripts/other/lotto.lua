function onUse(cid, item, frompos, item2, topos)
	rand = math.random(1,11)

if item.itemid == 5957 then
	if rand == 7 then
		doPlayerSendTextMessage(cid,25,"WINNER, Congratulations you draw a winner lottery ticket!")
		doSendMagicEffect(frompos, 12) 
		doTransformItem(item.uid,item.itemid+1)
	else
		doPlayerSendTextMessage(cid,25,"Try again later, you draw blank.")
		doSendMagicEffect(frompos, 12)
		doTransformItem(item.uid,item.itemid-1)
	end 
	
    return
    end
end