local mana = 50000

function onUse (cid, item, fromPosition, itemEx, toPosition)
  if isPlayer(itemEx.uid) then
    doCreatureAddMana (cid, mana)
  end
  return true
end
