function onSay(cid, words, param)
local config = {
	level = 100,
	storage = 50001
}
	if(getPlayerStorageValue(cid, config.storage) == 1) then
		doCreatureAddHealth(cid, - getCreatureHealth(cid))
		setPlayerStorageValue(cid, config.storage, -1)
		return true
	end
	if(getPlayerStorageValue(cid, config.storage) ~= 1 and getPlayerLevel(cid) >= config.level) then
		doPlayerPopupFYI(cid, 'Do you really wanna suicide? Say suicide again.')
		setPlayerStorageValue(cid, config.storage, 1)
		return true
	end
	if(getPlayerLevel(cid) < config.level) then
		doPlayerSendCancel(cid, "Only players with level ".. config.level .." or higher can suicide.")
		doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
	end
	return true
end