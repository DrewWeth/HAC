  function onUse(cid, item, frompos, item2, topos)

local c = {
        ExpScroll = 1949, -- Item ID
        ExpStorage = 7722891664141657600, -- Storage Value
        ExpAmount = 6148891664141657600, -- How much experience will be given?
        ExpTimes = 100, -- How many times may a player use this scroll?
        TrueMagicEffect = CONST_ME_GIFT_WRAPS, -- What magic effect should be made when it work?
        FalseMagicEffect = CONST_ME_POFF, -- What magic effect should be made when it doesn't work?
        LevelLimit = 1 -- Which level are you not allowed to use it?
        }

        if item.itemid == c.ExpScroll then
                if getPlayerLevel(cid) <= c.LevelLimit then
                        if getPlayerStorageValue(cid, c.ExpStorage) ~= (c.ExpTimes-1) then
                                doPlayerAddExperience(cid, c.ExpAmount)
                                doSendMagicEffect(frompos, c.TrueMagicEffect)
                                doRemoveItem(item.uid, 1)
                                setPlayerStorageValue(cid, c.ExpStorage, (getPlayerStorageValue(cid, c.ExpStorage)+1))
                        else
                                doPlayerSendCancel(cid, "You have already used this scroll " .. c.ExpTimes .. " times!")
                                doSendMagicEffect(frompos, c.FalseMagicEffect)
                        end
                end
        end
        return TRUE
end 