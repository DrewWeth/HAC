local itemID = 6119
local xp = 6148891664141657600 ---- How much exp it will give.
local level = 717217 -------From this level and less he can use this item.
function onUse(cid, item, frompos, item2, topos)
if item.itemid == itemID and getPlayerLevel(cid) <= level then
doPlayerAddExp(cid, xp)
doCreatureSay(cid, "You just used an Exp Scroll!" ,19)
doRemoveItem(cid, item.uid, 1)
else
doPlayerSendCancel(cid, "Sorry but you are to high lvl to use this scroll")
end
return 1
end