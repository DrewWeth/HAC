-- Skrypt by Wazzap --  
function onUse(cid, item, fromPosition, itemEx, toPosition) 
local config = { 
        poziom3 = 400000,  
        poziom2 = 300000,  
        poziom1 = 200000,  
        poziom = 100,  
        item3 = 2157,  
        item2 = 2157,  
        item1 = 2157,  
        item = 2157,  
        ilosc3 = 5,  
        ilosc2 = 5,  
        ilosc1 = 5,  
        ilosc = 5,  
        storage = 2892 
                        } 
    if getPlayerStorageValue(cid, config.storage) == 4 then 
        doPlayerSendTextMessage(cid,22,"HAVE ALL PRESENT") 
        return 0 
    end 
    if getPlayerLevel(cid) >= config.poziom3 and getPlayerStorageValue(cid, config.storage) == 3 then 
        doPlayerAddItem(cid, config.item3, config.ilosc3) 
        doPlayerSendTextMessage(cid,22,"You get " .. config.poziom3 .. " lvl") 
        setPlayerStorageValue(cid,config.storage, 4) 
        return 0 
    end 
    if getPlayerLevel(cid) >= config.poziom2 and getPlayerStorageValue(cid, config.storage) == 2 then 
        doPlayerAddItem(cid, config.item2, config.ilosc2) 
        doPlayerSendTextMessage(cid,22,"You get " .. config.poziom2 .. " lvl You get next pressent at " .. config.poziom3 .. " lvl ") 
        setPlayerStorageValue(cid,config.storage, 3) 
        return 0 
    end 
    if getPlayerLevel(cid) >= config.poziom1 and getPlayerStorageValue(cid, config.storage) == 1 then 
        doPlayerAddItem(cid, config.item1, config.ilosc1) 
        doPlayerSendTextMessage(cid,22,"You get " .. config.poziom1 .. " lvl You get next pressent at " .. config.poziom2 .. " lvl") 
        setPlayerStorageValue(cid,config.storage, 2) 
        return 0 
    end 
    if getPlayerLevel(cid) >= config.poziom and getPlayerStorageValue(cid, config.storage) == -1 then 
        doPlayerAddItem(cid, config.item, config.ilosc) 
        doPlayerSendTextMessage(cid,22,"You " .. config.poziom .. " lvl You get next pressent at " .. config.poziom1 .." lvl") 
        setPlayerStorageValue(cid,config.storage, 1) 
        return 0 
    end 
end