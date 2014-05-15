function onSay(cid, words, param, channel)
 
local t = string.explode(param, ",")
 
local params = 
{
	player = 
	{
		["health"] = {set = setCreatureMaxHealth, get = getCreatureMaxHealth},
		["mana"] = {set = setCreatureMaxMana, get = getCreatureMaxMana}
	},
	item =
	{
		["weaponattack"] = {set = setItemExtraAttack, get = getItemExtraAttack, msg = "attack"},
		["weapondefense"] = {set = setItemExtraDefense, get = getItemExtraDefense, msg = "defense"}
	}
}
 
	if(words == "!getpoints") then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have " .. getPlayerPoints(cid).. " points.")
		return TRUE
	end
 
	if(words == "!addpoints") then
		if(params.player[t[1]]) then
 
			local m = tonumber(t[2])
 
			if(not m) then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "No point specified.")
				return TRUE
			end
 
			if(getPlayerPoints(cid) < m) then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You do not have enought points.")
				return TRUE
			end
 
			m = math.abs(m)
			doPlayerRemovePoints(cid, m)
			params.player[t[1]].set(cid, params.player[t[1]].get(cid) + (m * 2))
			return TRUE
 
		elseif(params.item[t[1]]) then
 
			local m = tonumber(t[2])
 
			if(not m) then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "No point specified.")
				return TRUE
			end
 
			if(getPlayerPoints(cid) < m) then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You do not have enought points.")
				return TRUE
			end
 
			local weapon = getPlayerWeapon(cid, TRUE)
			local extraLimit = 15
 
			if(weapon.itemid == 0) then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You do not any weapon equiped.")
				return TRUE
			end
 
			local weaponAttribute = params.item[t[1]].get(weapon.uid)
 
			if (m > extraLimit) or ((weaponAttribute + m) > extraLimit) then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You only can add " .. extraLimit .. " extra " .. params.item[t[1]].msg .. " points to your weapon.")
				return TRUE
			end
 
			if(weaponAttribute >= extraLimit) then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cannot add more extra " .. params.item[t[1]].msg .. " to this weapon.")
				return TRUE
			end
 
			m = math.abs(m)
			doPlayerRemovePoints(cid, m)
			params.item[t[1]].set(weapon.uid, weaponAttribute + m)
			return TRUE
		else
			return TRUE
		end
	end
end