local often = {
    --number of players online, how fast raids will excute in minutes
    {players = 60, rate = 30},
    {players = 40, rate = 50},
    {players = 30, rate = 80},
    {players = 25, rate = 100},
    {players = 15, rate = 120},
    {players = 10, rate = 150}
}
 
local raids = {"Rotworm", "Orc", "Ferumbras", "Demodras", "Troll", "Necropharus", "Penguin", "Dharalion", "Fernfang", "General Murius", "Morgaroth", "Orshabaal"}
 
function onStartup()
    addEvent(howoften, 1000 * 60 * 5) --5minutes before first check gives players a chance to login
    return true
end
 
function howoften()
    numbers = getPlayersOnline()
    if #numbers >= 1 then
        for k=1, #often do
            if #numbers >= often[k].players then
                --doBroadcastMessage("calling raid", 19)
                addEvent(callraid, 1000 * 60 * often[k].rate)
                break
            end
        end
    else
        addEvent(howoften, 1000 * 60 * 5) --noone is online check back in 5minutes
    end
end
 
function callraid()
    executeRaid(raids[math.random(1,#raids)])
    addEvent(howoften, 1000 * 60 * 5)
end