function onUse(cid, item, fromPosition, itemEx, toPosition)
	local desc = getItemAttribute(item.uid, 'description') == nil and getItemInfo(item.itemid).description or getItemAttribute(item.uid, 'description')
 
	local config = {
		storageExhaust = 55668,
		exhaustTime = 10,
		effect = CONST_ME_HITBYFIRE
	}
 
	if exhaustion.check(cid, config.storageExhaust) ~= false then
		return doPlayerSendCancel(cid, 'You must wait '..exhaustion.get(cid, config.storageExhaust)..' seconds to use this item again.')
	end
 
	if not isCreature(itemEx.uid) then
		if string.find(desc:lower(), 'catched monster:') ~= nil then
			local x, y = string.find(desc, ': %a+.')
			local a, b = string.find(desc, ': %a+ %a+.')
 
			if getTileInfo(getThingPos(cid)).protection then
				return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You can\'t summon monster in protection zone.')
			end
 
			if a ~= nil then
				if #getCreatureSummons(cid) == 0 then
					local x = doSummonMonster(cid, string.sub(desc, a + 2, b - 1))
					doCreatureSay(cid, 'Go '..string.sub(desc, a + 2, b - 1)..'!', TALKTYPE_MONSTER_YELL)
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), config.effect)
					doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You summoned monster.')
				else
					doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You have back your pet.')
doRemoveCreature(getCreatureSummons(cid)[1])
	doCreatureSay(cid, 'Back my pet!', TALKTYPE_MONSTER_YELL)
				end
			elseif x ~= nil then
				if #getCreatureSummons(cid) == 0 then
					local x = doSummonMonster(cid, string.sub(desc, x + 2, y - 1))
					doCreatureSay(cid, 'Go '..string.sub(desc, x + 2, y - 1)..'!', TALKTYPE_MONSTER_YELL)
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), config.effect)
					doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You summoned monster.')
				else
					doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You have back your pet.')
doRemoveCreature(getCreatureSummons(cid)[1])
	doCreatureSay(cid, 'Back my pet!', TALKTYPE_MONSTER_YELL)
				end
			else
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'Unknow monster.')
			end
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You didn\'t catch anything into vial.')
		end
	elseif itemEx.uid == cid then
		if #getCreatureSummons(cid) > 0 then
			if string.find(desc:lower(), 'catched monster:') ~= nil then
				local x, y = string.find(desc, ': %a+.')
				if x ~= nil then
					for k, v in pairs(getCreatureSummons(cid)) do
						if getCreatureName(v):lower() == string.sub(desc, x + 2, y - 1) then
							doRemoveCreature(v)
							doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'Your summon backed to vial.')
							break
						end
					end				
				else
					doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'Unknow monster.')
				end
			else
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You didn\'t catch anything into vial.')
			end
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You didn\'t summon anything.')
		end
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You can summon catched monster if you will use it on tile or, on self if you want to that summon back to vial.')
	end
 
	exhaustion.set(cid, config.storageExhaust, config.exhaustTime)
	return true
end