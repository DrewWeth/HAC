	local text = {
	--X pos,Y pos, Z pos, text
	[1] = {pos = {1,1,7}, text = {""}}
        }

	local effects = {
	--X pos,Y pos, Z pos, text
	[1] = {pos = {1,23,7}, effect = {10}}
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