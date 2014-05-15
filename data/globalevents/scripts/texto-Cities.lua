local config = {
    positions = {
        ["Tree"] = { x = 2052, y = 1945, z = 7 },
		["Water"] = {x = 2046, y = 1945, z = 7},
		["Ice"] = { x = 2052, y = 1950, z = 7 },
		["Fire"] = {x = 2046, y = 1950, z = 7}
}
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(2, 255))
	doSendMagicEffect(pos, 37)
	doSendMagicEffect(pos, 44)
	doSendMagicEffect(pos, 71)
    end
    
    return TRUE
end  