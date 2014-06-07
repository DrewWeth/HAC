local config = {
	positions = {
		-- pos : You must put the position of the teleport here, text : The text, effects : any effects that you would like to appear along with the text.
		-- To add more positions, simply copy the line below this text, change the pos, text and effects, and add a ',' to the end of every line before the last one.
		-- Example : 
		-- {pos = {x = 994, y = 1004, z = 7}, text = "~*Hunting area*~", effects = {CONST_ME_FIREWORK_YELLOW}},
		-- {pos = {x = 994, y = 1004, z = 7}, text = "~*Hunting area*~", effects = {CONST_ME_FIREWORK_YELLOW}}
		-- Make sure the last line doesnt have ',' or it will not work! Good luck!
		{pos = {x = 994, y = 1004, z = 7}, text = "~*Hunting area*~", effects = {CONST_ME_FIREWORK_YELLOW}}
	},
	effects = {CONST_ME_POFF, CONST_ME_TELEPORT, CONST_ME_MAGIC_RED}
}

function onThink(interval)
	local people = getPlayersOnline()
	if #people == 0 then
		return true
	end
	for _, info in pairs(config.positions) do
		doPlayerSay(people[1], info.text, TALKTYPE_MONSTER_SAY, false, 0, info.pos)
		if info.effects and #info.effects > 0 then
			doSendMagicEffect(info.pos, info.effects[math.random(#info.effects)])
		elseif config.effects and #config.effects > 0 then
			doSendMagicEffect(info.pos, config.effects[math.random(#config.effects)])
		end
	end
	return true
end