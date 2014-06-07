 
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
	if((msg == "hi" or msg == "hello" or msg == "hey")  and not (isFocused(cid))) then
		selfSay("Hello!", cid, false)
		selfSay("You are in the south-east corner of {Aleda}. The {depot} is north, {temple} is west, there are {shops} in the middle of the city, and {hunting} everywhere.", cid)
		addFocus(cid)
	elseif((isFocused(cid)) and (msg == "aleda") or (msg == "Aleda")) then
		selfSay("Aleda is Honor and Chaos's main city.", cid)
		addFocus(cid)
	elseif((isFocused(cid)) and (msg == "depot")) then
		selfSay("The depot is directly north of here. You can store your valuable items there for storage.", cid)
		addFocus(cid)
	elseif((isFocused(cid)) and (msg == "temple")) then
		selfSay("The temple is directly west of here. It's a large open building where you will respawn if you die.", cid)
		addFocus(cid)
	elseif((isFocused(cid)) and (msg == "shops")) then
		selfSay("Runes, potions, distance weapons, and traders are in the middle of the city.", cid)
		addFocus(cid)
	elseif((isFocused(cid)) and (msg == "hunting")) then
		selfSay("Bandit camp is {south}, rotworms in the {sewers underground}, cyclops and dragons are in the {north mountain}, ", cid)
		addFocus(cid)	
	elseif((isFocused(cid)) and (msg == "bye" or msg == "goodbye" or msg == "cya")) then
		selfSay("I'll be here if you need me", cid, true)
		removeFocus(cid)
	else
		selfSay("Not sure what you mean.", cid)
		addFocus(cid)
	end
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
