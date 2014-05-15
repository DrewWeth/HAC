local t = {
	percent = 40, -- percent of health which allow to catch a monster
	vial = 2345, -- vial which should appear instead empty one.
	monsters = {

-- You must edit the empty slots for the names of the monsters or pets

		['fucker'] = {50, 50},
		['blocker'] = {50, 50},
		['the soldier'] = {50, 50},
		['invisble tiger'] = {50, 50},
		['druger'] = {50, 50},
		['slower'] = {50, 50},
		['ninja'] = {50, 50},
		['psyko'] = {50, 50}
	}
}
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
	local desc = getItemAttribute(item.uid, 'description') == nil and getItemInfo(item.itemid).description or getItemAttribute(item.uid, 'description')
 
	if isMonster(itemEx.uid) then
		if t.monsters[getCreatureName(itemEx.uid):lower()] then
			if getCreatureHealth(itemEx.uid) <= getCreatureMaxHealth(itemEx.uid) * t.percent / 100 then
				local desc = getItemAttribute(item.uid, 'description') == nil and getItemInfo(item.itemid).description or getItemAttribute(item.uid, 'description')
				if string.find(desc:lower(), 'catched monster:') == nil then
					if getPlayerLevel(cid) < t.monsters[getCreatureName(itemEx.uid):lower()][1] then
						return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You can\'t catch this monster. You are not enough experienced to do it.')
					elseif getCreatureMaster(itemEx.uid) == cid then
						return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You can\'t catch your own summon.')
					end
					if math.random(1, 100) < t.monsters[getCreatureName(itemEx.uid):lower()][2] then
						doSendMagicEffect(toPosition, CONST_ME_YALAHARIGHOST)
 
						local newItem = doPlayerAddItem(cid, t.vial, 1)
						doItemSetAttribute(newItem, 'description', desc .. ' Catched monster: ' .. getCreatureName(itemEx.uid):lower() .. '.')						
						doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You successful catched ' .. getCreatureName(itemEx.uid):lower() .. '\'s soul into vial.')
						doRemoveCreature(itemEx.uid)
					else
						doSendMagicEffect(toPosition, CONST_ME_GROUNDSHAKER)
						doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You failed at catching monster.')
						doRemoveCreature(itemEx.uid)
					end
				doRemoveItem(item.uid)              
				else
					doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You can\'t catch monster two times into same vial.')
				end
			else
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'Creature do not have require low health.')
			end
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You can use it only specific monsters.')
		end
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You can use it only on monsters.')
	end
	return true
end