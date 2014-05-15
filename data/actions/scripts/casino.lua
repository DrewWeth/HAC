--[ Script written and published by Orzeleagle/Collocorpus ]--
function onUse(cid, item, fromPosition, itemEx, toPosition)
	local config = {
		chance = math.random(1, 100), --losowanie
		win_chance = 50, --chance to win a percentage of
		multi = 2, --how many times you win more (eg 2 or 1cc bet, win and get 2cc)
		items = {2160, 2152}, --id items whom you can play
		min_count = 1, --Minimum Number of items (1 = least 1cc)
		max_count = 100 --maximum number of objects (10 = maximum 10cc)
	}	
	local positions = {
		[56501] = {x=(fromPosition.x-1), y=fromPosition.y, z=fromPosition.z, stackpos=255},
		[56502] = {x=(fromPosition.x+1), y=fromPosition.y, z=fromPosition.z, stackpos=255},
		[56503] = {x=fromPosition.x, y=(fromPosition.y-1), z=fromPosition.z, stackpos=255},
		[56504] = {x=fromPosition.x, y=(fromPosition.y+1), z=fromPosition.z, stackpos=255}
	}
	local itemplay = getThingfromPos(positions[item.actionid])	
	local storage, exh = 56500, 2 --storage id, time exh
	if (item.itemid == 10029) then
		doTransformItem(item.uid, 10030)
		if (getPlayerStorageValue(cid, storage)-os.time(t) < 1) then
			doPlayerSetStorageValue(cid, storage, os.time(t)+exh)
			if (isInArray(config.items, itemplay.itemid)) then
				if (itemplay.type >= config.min_count) and (itemplay.type <= config.max_count) then
					if (config.chance <= config.win_chance) then
						doRemoveItem(itemplay.uid, itemplay.type)
						doCreateItem(itemplay.itemid, (itemplay.type*config.multi), positions[item.actionid])
						doSendMagicEffect(positions[item.actionid], 31)
						doSendMagicEffect(getCreaturePosition(cid), 27)
						doPlayerSendCancel(cid, "Congratulations, you just won in our casino!")
						doSendAnimatedText(getCreaturePosition(cid), "~!Winner!~", TEXTCOLOR_YELLOW)
						return true
					else
						doRemoveItem(itemplay.uid, itemplay.type)
						doSendMagicEffect(positions[item.actionid], 66)
						doSendMagicEffect(getCreaturePosition(cid), 13)
						doPlayerSendCancel(cid, "It is your unlucky day! You lost.")
						doSendAnimatedText(getCreaturePosition(cid), "~!Loser!~", TEXTCOLOR_LIGHTBLUE)
						return true							
					end
				else
					doPlayerSendCancel(cid, "You can play only with amount from ".. config.min_count .." to ".. config.max_count ..".")
					doSendMagicEffect(fromPosition, 2)
					return true			
				end
			else
				doPlayerSendCancel(cid, "You cannot play with this item.")
				doSendMagicEffect(fromPosition, 2)
				return true
			end
		else
			doPlayerSendCancel(cid, "You must wait another ".. getPlayerStorageValue(cid, storage)-os.time(t) .." seconds.")
			doSendMagicEffect(fromPosition, 2)
			return true
		end
	else
		doTransformItem(item.uid, 10029)
		doSendMagicEffect(fromPosition, 2)
		return true
	end
end
