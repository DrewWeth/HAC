	function onUse(cid, item, frompos, item2, topos)
	doPlayerSay(cid, "Fhuuu..." ,16)
	doPlayerAddHealth(cid, -5)
	doSendMagicEffect(frompos, 34)
	doRemoveItem(item.uid, 1)
   	return 1
 
   		end