-- Znote Shop v1.0 for Znote AAC on TFS 0.3.6+ Crying Damson.
function onSay(cid, words, param)
	local storage = 54073 -- Make sure to select non-used storage. This is used to prevent SQL load attacks.
	local cooldown = 15 -- in seconds.
	
	if getPlayerStorageValue(cid, storage) <= os.time() then
		setPlayerStorageValue(cid, storage, os.time() + cooldown)
		local accid = getAccountNumberByPlayerName(getCreatureName(cid))
		
		-- Create the query
		local orderQuery = db.storeQuery("SELECT `id`, `type`, `itemid`, `count`, COUNT(*) AS 'total' FROM `znote_shop_orders` WHERE `account_id` = " .. accid .. ";")
		
		-- Detect if we got any results
		if orderQuery ~= false then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Looking up info...");
			-- Fetch order values
			local q_id = result.getDataInt(orderQuery, "id")
			local q_type = result.getDataInt(orderQuery, "type")
			local q_itemid = result.getDataInt(orderQuery, "itemid")
			local q_count = result.getDataInt(orderQuery, "count")
			local q_total = result.getDataInt(orderQuery, "total");
			result.free(orderQuery)
			
			-- ORDER TYPE 1 (Regular item shop products)
			if q_type == 1 then
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have " .. q_total .. " shop items to claim");
				-- Get wheight
				local playerCap = getPlayerFreeCap(cid)
				local itemweight = getItemWeightById(q_itemid, q_count)
					if playerCap >= itemweight then
						db.executeQuery("DELETE FROM `znote_shop_orders` WHERE `id` = " .. q_id .. ";")
						doPlayerAddItem(cid, q_itemid, q_count)
						doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Congratulations! You have recieved ".. q_count .." "..getItemNameById(q_itemid).."(s)!")
					else
						doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Need more CAP!")
					end
			else
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Order type not 1. Exiting.");
			end
			-- Add custom order types here
			-- Type 2 is reserved for premium days and is handled on website, not needed here.
			-- Type 3 is reserved for character gender(sex) change and is handled on website as well.
			-- So use type 4+ for custom stuff, like etc packages.
			-- if q_type == 4 then
			-- end
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You have no orders.")
		end
		
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Can only be executed once every "..cooldown.." seconds. Remaining cooldown: ".. getPlayerStorageValue(cid, storage) - os.time())
	end
	return false
end