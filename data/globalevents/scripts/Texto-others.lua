local config = {
    positions = {
        ["README"] = {x = 1994, y = 1999, z = 7},
		["Gifts"] = {x = 1991, y = 1983, z = 7},
		["Arena"] = {x = 2013, y = 1991, z = 7},
		["Rune$"] = {x = 1981, y = 1997, z = 7},
		["TP'S"] = {x = 1981, y = 1996, z = 6},
		["Coming"] = {x = 1982, y = 1996, z = 6},
		["Casino"] = { x = 1988, y = 1994, z = 7 },
		["Castles"] = {x = 1988, y = 1993, z = 7},
		["Soon"] = {x = 1983, y = 1996, z = 6}
}
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(2, 255))
    end
    
    return TRUE
end  