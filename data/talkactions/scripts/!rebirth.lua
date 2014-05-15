function onSay(cid, words, param)
local lvl = getPlayerLevel(cid) --the current player level
local maxlvl = 717217 --the level when the player gets rebirthed
local extrahp = getCreatureMaxHealth(cid)
local extramana = getCreatureMaxMana(cid)
local rebirthCount = getPlayerStorageValue(cid,1234)
	if lvl >= maxlvl then
		if rebirthCount < 1 then
			setPlayerStorageValue(cid, 1234, 0)
		end
			setPlayerStorageValue(cid, 1234, (rebirthCount + 1))
		if rebirthCount > 1 then
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "You are now rebirthed! You now have " .. rebirthCount .. " rebirths!")
		else
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "You are now rebirthed! You now have " .. rebirthCount .. " rebirth!")
		end  
		doPlayerAddLevel(cid, -(maxlvl-100), true)
		setCreatureMaxHealth(cid, extrahp)
		setCreatureMaxMana(cid, extramana)
	else
		doPlayerSendTextMessage(cid, 22, "You do not reach the requirements")
		doSendMagicEffect(getPlayerPosition(cid),2)
 	end
end