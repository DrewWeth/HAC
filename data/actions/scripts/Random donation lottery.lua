local config = {
	{ rate = 2, item = 7735, count = { const = 1 }}, -- Donation spear thrower
	{ rate = 2, item = 12603, count = { const = 1 }}, -- Donation armor
	{ rate = 2, item = 12604, count = { const = 1 }}, -- Donation legs
	{ rate = 2, item = 12605, count = { const = 1 }}, -- Donation shield
	{ rate = 2, item = 12606, count = { const = 1 }}, -- Donation helmet
	{ rate = 2, item = 12607, count = { const = 1 }}, -- Donation boots
	{ rate = 2, item = 12609, count = { const = 1 }}, -- Donation wand
	{ rate = 2, item = 12610, count = { const = 1 }}, -- Donation sword
	{ rate = 2, item = 11115, count = { const = 1 }}, -- Donation backpack
	{ rate = 2, item = 12574, count = { const = 1 }}, -- Donation axe
	{ rate = 2, item = 7409, count = { const = 1 }}, -- Donation club
	{ rate = 2, item = 7460, count = { const = 1 }}, -- Pheonixia shield
	{ rate = 2, item = 11362, count = { const = 1 }}, -- Pheonixia helmet
	{ rate = 2, item = 11350, count = { const = 1 }}, -- Pheonixia armor
	{ rate = 2, item = 11349, count = { const = 1 }}, -- Pheonixia legs
	{ rate = 2, item = 11360, count = { const = 1 }}, -- Random wand
	{ rate = 2, item = 11301, count = { const = 1 }}, -- Pheonixia sword
	{ rate = 2, item = 12288, count = { const = 1 }}, -- Pheonixia Wand
	{ rate = 2, item = 12285, count = { const = 1 }}, -- Pheonixia arrow
	{ rate = 2, item = 8857, count = { const = 1 }}, -- Pheonixia bow
	{ rate = 2, item = 11113, count = { const = 1 }}, -- Blue boots
	{ rate = 2, item = 11114, count = { const = 1 }}, -- Green boots
	{ rate = 1, item = 8302, count = { const = 1 }}, -- Unknown
	{ rate = 1, item = 8303, count = { const = 1 }}, -- Unknown
	{ rate = 1, item = 6538, count = { const = 1 }}, -- Unknown
	{ rate = 1, item = 3954, count = { const = 1 }}, -- Donation lottery doll
	{ rate = 1, item = 11128, count = { const = 1 }}, -- Unknown
	{ rate = 1, item = 12385, count = { const = 1 }}, -- Unknown
	{ rate = 1, item = 10925, count = { const = 1 }}, -- crazy mana pot
	{ rate = 1, item = 10759, count = { const = 1 }}, -- crazy healing pot
	{ rate = 1, item = 9678, count = { const = 1 }}, -- Unknown
	{ rate = 1, item = 10569, count = { const = 1 }}, -- Unknown
	{ rate = 1, item = 10309, count = { const = 1 }}, -- Pheonixia ring
	{ rate = 1, item = 10139, count = { const = 1 }}, -- second healing medal
	{ rate = 1, item = 10136, count = { const = 1 }}, -- second mana medal
	{ rate = 1, item = 2296, count = { const = 1 }}, -- Donation uh
	{ rate = 1, item = 2275, count = { const = 1 }}, -- Donation manarune
	{ rate = 1, item = 2284, count = { const = 1 }}, -- Donation sd
	{ rate = 1, item = 1967, count = { const = 1 }}, -- Teleport scroll
	{ rate = 1, item = 5468, count = { const = 1 }}, -- Unknown
	{ rate = 1, item = 10137, count = { const = 1 }}, -- Vip medal
	{ rate = 1, item = 2348, count = { const = 1 }}, -- mana booster
	{ rate = 1, item = 5810, count = { const = 1 }}, -- Outfit changer
	{ rate = 1, item = 10552, count = { const = 1 }}, -- Hp booster
	{ rate = 1, item = 8752, count = { const = 1 }}, -- Exp ring
	{ rate = 1, item = 7697, count = { const = 1 }}, -- Transforming ring
	{ rate = 1, item = 9969, count = { const = 1 }}, -- Skull remover
	{ rate = 1, item = 10134, count = { const = 1 }}, -- Forever aol
	{ rate = 1, item = 7289, count = { const = 1 }}, -- Donation freeze rune
	{ rate = 1, item = 2574, count = { const = 1 }}, -- Donation jar
	{ rate = 1, item = 12427, count = { const = 1 }}, -- Death teleport scroll
	{ rate = 1, item = 10140, count = { const = 1 }}, -- First healing medal
	{ rate = 1, item = 10138, count = { const = 1 }} -- First mana medal
	}
 
local sumOfRate = 0
 
for i,v in ipairs(config) do
	sumOfRate = sumOfRate + v.rate
end
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
 
	local rand = math.random(1, sumOfRate)
 
	local subSum = 0
	local exactItem = nil
	for i,v in ipairs(config) do
		if (subSum > rand) then
			if (i > 1) then
				exactItem = i-1
			end
			break
		end
		subSum = subSum + v.rate
		if (subSum >= rand) then
			exactItem = i
			break
		end
	end
 
	if (config[exactItem].count.const ~= nil) then
		doPlayerAddItem(cid, config[exactItem].item, config[exactItem].count.const)
	else
		doPlayerAddItem(cid, config[exactItem].item, math.random(config[exactItem].count.min, config[exactItem].count.max))
	end
	doRemoveItem(item.uid, 1)
end