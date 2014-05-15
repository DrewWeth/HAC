local config = {
    positions = {
        ["Hunts"] = {x = 2188, y = 1888, z = 7},
		["Temple"] = {x = 2188, y = 1890, z = 7},
		["Depot"] = {x = 2188, y = 1889, z = 7},
		["Trainers"] = {x = 2188, y = 1891, z = 7}
}
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(2, 255))
    end
    
    return TRUE
end  