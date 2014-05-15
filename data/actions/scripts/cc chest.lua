function onUse(cid, item, frompos, item2, topos)
if item.uid == 2160 then
queststatus = getPlayerStorageValue(cid, 11387)
if queststatus == -1 then
doCreatureSay(cid, "You Have Found 100 CC And Good Luck!. !!" ,19)
doPlayerAddItem(cid, 2160, 100 )
setPlayerStorageValue(cid, 86753, 1)
else
doCreatureSay(cid, "You've Already Take This Chest!" ,19)
end
else
return 0
end
return 1
end