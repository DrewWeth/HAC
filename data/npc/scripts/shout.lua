local shouts = {"Come find out about this town!", "Want to know the basics of Aleda?"}

function thinkCallback(cid)
	local rand = math.random(250)
	if shouts[rand] then
		selfSay(shouts[rand])
	end
	return true
end

npcHandler:setCallback(CALLBACK_ONTHINK, thinkCallback)