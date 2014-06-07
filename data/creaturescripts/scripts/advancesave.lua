local config = {
	savePlayersOnAdvance = true
}

function onAdvance(cid, skill, oldLevel, newLevel)
	if (skill == 1) then
		doPlayerAddSkillTry(cid, 2, 1)
		doPlayerAddSkillTry(cid, 3, 1)
	elseif (skill == 2) then
		doPlayerAddSkillTry(cid, 1, 1)
		doPlayerAddSkillTry(cid, 3, 1)
	elseif (skill == 3) then
		doPlayerAddSkillTry(cid, 1, 1)
		doPlayerAddSkillTry(cid, 2, 1)
	end

	if(getPlayerVocation(cid) == 0) then
		doPlayerSetRate(cid, SKILL__LEVEL, 37)
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Honor and Chaos")
	end
	
	if(config.savePlayersOnAdvance) then
		doPlayerSave(cid, true)
	end

	return true
end
