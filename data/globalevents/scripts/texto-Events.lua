local config = {
    positions = {
        ["Tetris"] = { x = 1912, y = 1948, z = 7 },
		["Bomberman"] = { x = 1922, y = 1948, z = 7 },
		["Zombie"] = {x= 1917, y=1943, z=7},
		["Last-man"] = {x = 1917, y = 1953, z = 7}
}
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(2, 255))
	doSendMagicEffect(pos, 28)
	doSendMagicEffect(pos, 27)
	doSendMagicEffect(pos, 26)
    end
    
    return TRUE
end  