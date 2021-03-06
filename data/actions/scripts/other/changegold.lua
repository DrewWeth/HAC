local coins = {
	[ITEM_GOLD_COIN] = {
		to = ITEM_PLATINUM_COIN, effect = TEXTCOLOR_YELLOW
	},
	[ITEM_PLATINUM_COIN] = {
		from = ITEM_GOLD_COIN, to = ITEM_CRYSTAL_COIN, effect = TEXTCOLOR_LIGHTBLUE
	},
	[ITEM_CRYSTAL_COIN] = {
		from = ITEM_PLATINUM_COIN, to = 2157, effect = TEXTCOLOR_RED
	},
    [2157] = {
		from = ITEM_CRYSTAL_COIN, to = 9971, effect = TEXTCOLOR_TEAL
	},
	[9971] = {
		from = 2157, effect = TEXTCOLOR_LIGHTGREEN
	}
}
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
	local coin = coins[item.itemid]
	if(not coin) then
		return FALSE
	end
 
	if(coin.to ~= nil and item.type == ITEMCOUNT_MAX) then
		doChangeTypeItem(item.uid, item.type - item.type)
		doPlayerAddItem(cid, coin.to, 1)
		doSendAnimatedText(fromPosition, "$$$", coins[coin.to].effect)
	elseif(coin.from ~= nil) then
		doChangeTypeItem(item.uid, item.type - 1)
		doPlayerAddItem(cid, coin.from, ITEMCOUNT_MAX)
		doSendAnimatedText(fromPosition, "$$$", coins[coin.from].effect)
	end
	return TRUE
end