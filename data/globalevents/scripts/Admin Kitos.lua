	local text = {
	--X pos,Y pos, Z pos, text
	[1] = {pos = {1313,1509,7}, text = {"My"}}
        }

	local effects = {
	--X pos,Y pos, Z pos, text
	[1] = {pos = {1313,1509,7}, effect = {6}}
        }

function onThink(interval, lastExecution)
	for _, area in pairs(text) do
		doSendAnimatedText({x=area.pos[1],y=area.pos[2],z=area.pos[3]},area.text[1], math.random(01,255))
	end
	for _, area in pairs(effects) do
		doSendMagicEffect({x=area.pos[1],y=area.pos[2],z=area.pos[3]},area.effect[1])
	end
	return TRUE
end