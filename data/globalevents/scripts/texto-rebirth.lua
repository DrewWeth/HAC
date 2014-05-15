local config = {
    positions = {
        ["R10"] = { x = 1979, y = 1989, z = 6 },
        ["R20"] = { x = 1981, y = 1989, z = 6 },
        ["R30"] = { x = 1983, y = 1989, z = 6 },
        ["R40"] = { x = 1985, y = 1989, z = 6 },
        ["R50"] = { x = 1987, y = 1989, z = 6 },
        ["R60"] = { x = 1989, y = 1989, z = 6 },
        ["R70"] = { x = 1991, y = 1989, z = 6 },
        ["R80"] = { x = 1993, y = 1989, z = 6 },
		["R90"] = { x = 1995, y = 1989, z = 6 },
		["R100"] = { x = 1997, y = 1989, z = 6 },
		["R110"] = { x = 1999, y = 1989, z = 6 },
		["R120"] = { x = 2001, y = 1989, z = 6 }
}
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(2, 255))
	doSendMagicEffect(pos, 27)
	doSendMagicEffect(pos, 34)
	doSendMagicEffect(pos, 61)
    end
    
    return TRUE
end  