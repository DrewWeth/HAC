function onSay(cid, words, param, channel)
    local text = "Wait for a new round to start."
    if getGlobalStorageValue(1337) == 1 then
        text = "Incorrect, try again!"
        if param == getGlobalStorageString(1337) then
            text = "Congratulations! You are the fastest typer for this round."
            setGlobalStorageValue(1337, 0)
            doBroadcastMessage('Winner! '..getCreatureName(cid)..' was the first to type it.' , MESSAGE_EVENT_ORANGE)
        end
    end
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, text)
    return TRUE
end