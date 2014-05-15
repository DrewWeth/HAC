function onLogout (cid)
playerpos = getPlayerPosition(cid)
doSendAnimatedText(playerpos, "Goodbye!", TEXTCOLOR_RED)
    return TRUE
end