local config = {
	loginMessage = getConfigValue('loginMessage'),
	useFragHandler = getBooleanFromString(getConfigValue('useFragHandler'))
}

function onLogin(cid)
	local loss = getConfigValue('deathLostPercent')
	if(loss ~= nil) then
		doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, loss * 10)
	end

	local accountManager = getPlayerAccountManager(cid)
	if(accountManager == MANAGER_NONE) then
		local lastLogin, str = getPlayerLastLoginSaved(cid), config.loginMessage
		if(lastLogin > 0) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
			str = "Your last visit was on " .. os.date("%a %b %d %X %Y", lastLogin) .. "."
		else
                setPlayerStorageValue(cid, 85987, 0)
			str = str .. " Please choose your outfit."
			doPlayerSendOutfitWindow(cid)
		end

		doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
	elseif(accountManager == MANAGER_NAMELOCK) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, it appears that your character has been namelocked, what would you like as your new name?")
	elseif(accountManager == MANAGER_ACCOUNT) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to manage your account and if you want to start over then type 'cancel'.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to create an account or type 'recover' to recover an account.")
	end

	if(not isPlayerGhost(cid)) then
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	end

	if(getPlayerVocation(cid) == 0) then
		doPlayerSetRate(cid, SKILL__LEVEL, 37)
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Honor and Chaos")
	end

	registerCreatureEvent(cid, "Mail")
	registerCreatureEvent(cid, "GuildMotd")
    registerCreatureEvent(cid, "rebirth")
	registerCreatureEvent(cid, "Idle")
	registerCreatureEvent(cid, "ReportBug")
	registerCreatureEvent(cid, "AdvanceSave")
	registerCreatureEvent(cid, "Advance")
	registerCreatureEvent(cid, "KillingInTheNameOf")
	registerCreatureEvent(cid, "ZombieAttack")
	registerCreatureEvent(cid, "Zombie")
	registerCreatureEvent(cid, "ZombieLook")
	registerCreatureEvent(cid, "Portal")
	registerCreatureEvent(cid, "Deatheffect")
	registerCreatureEvent(cid, "forever amulet")
	registerCreatureEvent(cid, "skull amulet")
	registerCreatureEvent(cid, "charge amulet")
	registerCreatureEvent(cid, "showKD")
	registerCreatureEvent(cid, "firstitems")
	return true
end
