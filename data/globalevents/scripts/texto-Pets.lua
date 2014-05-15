local config = {
    positions = {
		["Pets"] = {x = 1988, y = 1995, z = 7},
        ["Fucker"] = {x = 2090, y = 1859, z = 7},
		["Blocker"] = {x = 2084, y = 1853, z = 7},
		["Invisible"] = {x = 2090, y = 1853, z = 7},
		["Soldier"] = {x = 2090, y = 1865, z = 7},
		["Druger"] = {x = 2084, y = 1865, z = 7},
		["Slower"] = {x = 2078, y = 1865, z = 7},
		["Ninja"] = {x = 2078, y = 1859, z = 7},
		["Psyko"] = {x = 2078, y = 1853, z = 7},
		["Lvl.1"] = {x = 2084, y = 1854, z = 7},
		["Lvl.2"] = {x = 2089, y = 1854, z = 7},
		["Lvl.3"] = {x = 2089, y = 1859, z = 7},
		["Lvl.4"] = {x = 2089, y = 1864, z = 7},
		["Lvl.5"] = {x = 2084, y = 1864, z = 7},
		["Lvl.6"] = {x = 2079, y = 1864, z = 7},
		["Lvl.7"] = {x = 2079, y = 1859, z = 7},
		["Lvl.8"] = {x = 2079, y = 1854, z = 7},
		["Lvl.9"] = {x = 2084, y = 1854, z = 6},
		["Lvl.10"] = {x = 2089, y = 1854, z = 6},
		["Lvl.11"] = {x = 2089, y = 1859, z = 6},
		["Lvl.12"] = {x = 2089, y = 1864, z = 6},
		["Lvl.13"] = {x = 2084, y = 1864, z = 6},
		["Lvl.14"] = {x = 2079, y = 1864, z = 6},
		["Lvl.15"] = {x = 2079, y = 1859, z = 6},
		["Lvl.16"] = {x = 2079, y = 1854, z = 6}

}
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(2, 255))
    end
    
    return TRUE
end  