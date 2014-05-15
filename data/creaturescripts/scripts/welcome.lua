local config = {
      serverName = "Adera",
      protectionLevel = 20,
}

function onLogin(cid)
local playerName = getPlayerName(cid)
local playerLevel = getPlayerLevel(cid)
local playerAccess = getPlayerAccess(cid)

         doPlayerPopupFYI(cid, "Welcome to "..config.serverName.."\n\nUse !spells to see your available spells\nPlayer killing level: 50\n\nKNIGHTS\n--------\nAll spells are free, but have exhaust.\n\nPALADINS\n--------\nYou have 200 stamina points that your spells use.\n\nYou can travel by boat, carpet, or temple.")
return TRUE
end  