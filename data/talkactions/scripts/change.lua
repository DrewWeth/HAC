function onSay(cid, words, param)
local outfits = {
	["dragon"] = {seg = 30,effect = 6, text = {"GROOAAARRR","Rrrrooaarr"},out = 34},
	["ghost"] = {seg = 30,effect = 12, text = {"Shhhhhh!","Buuuuuh"}, out = 48},
	["witch"] = {seg = 30,effect = 66, text = {"Hahahahahaha!","Hihihihih!"},out = 54},
	["frost"] = {seg = 30,effect = 43, text = {"Coooooold!","hehehehe!"},out = 248},
	["crystal"] = {seg = 30,effect = 52, text = {"Coooooold!","hehehehe!"},out = 263},
	["poison"] = {seg = 30,effect = 46, text = {"hohohoho!","grgrgrgrg!"},out = 219},
	["bug"] = {seg = 30,effect = 68, text = {"hubhubhub!","höhöhöhö	!"},out = 45 }
	}
	if param == '' then
		return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to define a valid monstername.")
	end
	local u = outfits[string.lower(param)]
	if u then    
                function effect(cid, u, pos)
                if getCreatureOutfit(cid).lookType == u.out then
		local k = getThingPos(cid)
		if k.x ~= pos.x or k.y ~= pos.y or k.z ~= pos.z then
			doSendMagicEffect(k, u.effect)
		end
		addEvent(effect, 100, cid, u, k)
               end               
                 end
		doPlayerSay(cid, u.text[math.random(1, #u.text)], 19)
		doSetCreatureOutfit(cid, {lookType = u.out}, u.seg*1000)
                effect(cid, u, {x=0, y=0, z=0})
	else
		return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "This monster outfit is not available.")
	end
return true
end