local time = 4 -- Seconds
local say_events = {}
local function SayText(cid)
    if isPlayer(cid) == TRUE then
         if say_events[getPlayerGUID(cid)] ~= nil then
             if isPlayer(cid) == TRUE then
                 doSendAnimatedText(getPlayerPosition(cid),"Away!", math.random(01,255))
             end
             say_events[getPlayerGUID(cid)] = addEvent(SayText, time * 1000 / 2, cid)       
         end                                                       
    end
    return TRUE
end

local storage = 38417
function onSay(cid, words, param, channel)
local afkCheck = getPlayerStorageValue(cid, storage)
    if(param == "") then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
    return TRUE
    end
     if (param == "on") then
        if (afkCheck == -1) then
            if (isPlayer(cid) == TRUE) then
                doSendAnimatedText(getPlayerPosition(cid),"Away!", math.random(01,255))
            end
            say_events[getPlayerGUID(cid)] = addEvent(SayText, time * 1000, cid)
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Waiting For You!.")
            doCreatureSetNoMove(cid, true)
            setPlayerStorageValue(cid, storage, 1)
        else
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You are already Away.")
        end
     elseif (param == "off") then
        stopEvent(say_events[getPlayerGUID(cid)])
        say_events[getPlayerGUID(cid)] = nil
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Welcome Back!")
        doCreatureSetNoMove(cid, false)
        setPlayerStorageValue(cid, storage, -1)
    end
    return TRUE
end 