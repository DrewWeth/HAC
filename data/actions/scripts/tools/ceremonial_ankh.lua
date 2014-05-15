function onUse(cid, item, frompos, item2, topos)
    if getPlayerBlessing(cid, 1) then
	   doPlayerSendTextMessage(cid,25,"You've The Spiritual Shielding.")
	else
	doPlayerSendTextMessage(cid,25,"You don't have The Spiritual Shielding.")
	end
	if getPlayerBlessing(cid, 2) then
	   doPlayerSendTextMessage(cid,25,"You've The Embrace of Tibia.")
	else
	doPlayerSendTextMessage(cid,25,"You don't have The Embrace of Tibia.")
	end
	if getPlayerBlessing(cid, 3) then
	   doPlayerSendTextMessage(cid,25,"You've The Fire of the Suns.")
	else
	doPlayerSendTextMessage(cid,25,"You don't have The Fire of the Suns.")
	end
    if getPlayerBlessing(cid, 4) then
	   doPlayerSendTextMessage(cid,25,"You've The Spark of the Phoenix.")
	else
	doPlayerSendTextMessage(cid,25,"You don't have The Spark of the Phoenix.")
	end 
	if getPlayerBlessing(cid, 5) then
	   doPlayerSendTextMessage(cid,25,"You've The Wisdom of Solitude.")
	else
	doPlayerSendTextMessage(cid,25,"You don't have The Wisdom of Solitude.")
	end
  return TRUE
end