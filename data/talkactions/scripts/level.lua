function onSay(cid, words, param, channel)
	doPlayerSendTextMessage(cid,19,"You are level : ----> "..getPlayerLevel(cid).." <----")
	return true
end