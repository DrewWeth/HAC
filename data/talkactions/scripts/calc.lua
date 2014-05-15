function onSay(cid, words, param, channel) --- Calculator beta by mock
	param = param..'€'
	local lua = ''
	for i,sinal,e in param:gmatch('(%(*%d+%.*%d*%)*)%s*([+-/%*^%%])') do
		lua = lua ..i..sinal
	end
	if param:match('.+%s*(%([-]*%d+%)*)€') then
		lua = lua..param:match('.+%s*(%([-]*%d+%)*)€')
	elseif param:match('.+%s*(%(*[-]%d+%.*%d*%)*)€') then
		if lua:sub(lua:len(),lua:len()) ~= '-' then
			lua = lua..param:match('%l*(%(*[-]%d+%.*%d*%)*)€')
		else
			lua = lua..param:match('%l*(%(*%d+%.*%d*%)*)€')
		end
	elseif param:match('%l*(%(*[-]*%d+%.*%d*%)*)€') then
		lua = lua..param:match('%l*(%(*[-]*%d+%)*)€')
	end
	if lua == '' then
		doPlayerSendTextMessage(cid,25,'Command ['..param..'] invalid.')
		return true
	end
	local f,e = loadstring('return '..lua) -- wop but dont spent 50 lines
	if not f and e then
		doPlayerSendTextMessage(cid,25,'Command ['..lua..'] invalid.')
		return true
	end
	local f,e = pcall(f)
	if not f and e then
		doPlayerSendTextMessage(cid,25,'Command ['..lua..'] invalid.')
		return true
	end
	doCreatureSay(cid,'Calc: '..lua..' = '..tostring(e),1)
	return true
end