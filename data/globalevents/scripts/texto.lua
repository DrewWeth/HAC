local config = {
    positions = {
        ["Welcome!"] = { x = 2000, y = 2000, z = 7 },
        ["Training"] = { x = 1995, y = 1995, z = 7 },
        ["Hunts"] = { x = 1993, y = 1995, z = 7 },
        ["Events"] = { x = 1997, y = 1995, z = 7 },
        ["Depot"] = { x = 1999, y = 1995, z = 7 },
        ["Cities"] = { x = 2001, y = 1995, z = 7 },
        ["Quests"] = { x = 2003, y = 1995, z = 7 },
        ["Tetris"] = { x = 3996, y = 4003, z = 7 },
		["Start"] = { x = 1997, y = 1999, z = 7 },
		["VIP"] = { x = 2004, y = 2001, z = 7 },
		["More"] = {x = 1991, y = 1985, z = 7}
}
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(2, 255))
	doSendMagicEffect(pos, 28)
	doSendMagicEffect(pos, 35)
	doSendMagicEffect(pos, 53)
    end
    
    return TRUE
end  