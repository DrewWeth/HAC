 
local focuses = {}
local function isFocused(cid)
	for i, v in pairs(focuses) do
		if(v == cid) then
			return true
		end
	end
	return false
end
 
local function addFocus(cid)
	if(not isFocused(cid)) then
		table.insert(focuses, cid)
	end
end
local function removeFocus(cid)
	for i, v in pairs(focuses) do
		if(v == cid) then
			table.remove(focuses, i)
			break
		end
	end
end
local function lookAtFocus()
	for i, v in pairs(focuses) do
		if(isPlayer(v)) then
			doNpcSetCreatureFocus(v)
			return
		end
	end
	doNpcSetCreatureFocus(0)
end
 
function onCreatureDisappear(cid)
	if(isFocused(cid)) then
		selfSay("Goodbye.")
		removeFocus(cid)
	end
end
 
function onCreatureSay(cid, type, msg)
	choice = 1
	if((msg == "hi" or msg == "hello" or msg == "hey")  and not (isFocused(cid))) then
		selfSay("Save yourself".. getCreatureName(cid) .."!! {Run north} until you find the depot. This port has been overun by bandits. We didn't see them from off shore!", cid, true)
		addFocus(cid)
		status = 1
	
	elseif((isFocused(cid)) and (msg == "bye" or msg == "goodbye" or msg == "cya")) then
		selfSay("Make haste! Save yourself!!", cid, true)
		removeFocus(cid)
end
 
function onPlayerCloseChannel(cid)
	if(isFocused(cid)) then
		selfSay("Run!")
		removeFocus(cid)
	end
end
 
function onThink()
	for i, focus in pairs(focuses) do
		if(not isCreature(focus)) then
			removeFocus(focus)
		else
			local distance = getDistanceTo(focus) or -1
			if((distance > 4) or (distance == -1)) then
				selfSay("Run!")
				removeFocus(focus)
			end
		end
	end
	lookAtFocus()
end
