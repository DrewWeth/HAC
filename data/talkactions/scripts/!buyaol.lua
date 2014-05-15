function onSay(cid, words, param)

local pos = getPlayerPosition(cid)
local effectPositions = {
{x = pos.x - 1, y = pos.y - 1, z = pos.z},
{x = pos.x + 1, y = pos.y - 1, z = pos.z},
{x = pos.x + 1, y = pos.y + 1, z = pos.z},
{x = pos.x - 1, y = pos.y + 1, z = pos.z},
{x = pos.x, y = pos.y - 3, z = pos.z},
{x = pos.x, y = pos.y + 3, z = pos.z},
{x = pos.x - 3, y = pos.y, z = pos.z},
{x = pos.x + 3, y = pos.y, z = pos.z},
{x = pos.x - 2, y = pos.y - 2, z = pos.z},
{x = pos.x + 2, y = pos.y - 2, z = pos.z},
{x = pos.x + 2, y = pos.y + 2, z = pos.z},
{x = pos.x - 2, y = pos.y + 2, z = pos.z}
}
if doPlayerRemoveMoney(cid,10000) == true then
   doPlayerAddItem(cid,2173,1)
      doCreatureSay(cid,'AOL',TALKTYPE_ORANGE_1)
   doPlayerSendTextMessage(cid,19,"You are now protected")
	for _, ePos in ipairs(effectPositions) do
		doSendDistanceShoot(pos, ePos, 40)
		doSendMagicEffect(ePos, 29)
            end
   else
	doPlayerSendCancel(cid,"You don't have enough money.")
   doSendMagicEffect(getPlayerPosition(cid),2)
end 
return true
end