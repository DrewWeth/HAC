local maxHealth = getCreatureMaxHealth(cid)               -- Gets the players max health.
local newHealth = (maxHealth / 4)                        -- Dividing the players max health into 4. (25% each)
local addHealth = (maxHealth + newHealth)                -- This will be the new max health. (25% + current max health)

doCreatureSetMaxHealth(cid, addHealth)                                                               -- Sets the new max health.
doSendAnimatedText(getCreaturePosition(cid), "+25% (" .. (addHealth) .. " HP)", 145)                 -- Sends animated text above the player, saying "+25% (health_added HP)".