-- [[> Automated Database Cleanup 1.1 //By Cybermaster <]] --
-- [[> Function getDBPlayersCount() by Elf <]] --
 
function getDBPlayersCount()
    local result = db.getResult("SELECT COUNT(`id`) as `count` FROM `players`;")
    local tmp = result:getDataInt("count")
    result:free()
    return tmp
end
 
function onStartup()
    local DB_BEFORE = getDBPlayersCount()
 
    --In each table, players with below specified level, and days of inactivity will be deleted from db on server startup
    local cleanup = {
    [1] = {level = 8, time = 5 * 24 * 60 * 60},
    [2] = {level = 1000, time = 20 * 24 * 60 * 60},
    [3] = {level = 5000, time = 30 * 24 * 60 * 60},
    [4] = {level = 10000, time = 60 * 24 * 60 * 60},
    [5] = {level = 150000, time = 90 * 24 * 60 * 60}
    }
 
    for i = 1, #cleanup do
        db.executeQuery("DELETE FROM `players` WHERE `level` < ".. cleanup[i].level .." AND `id` > 6 AND `group_id` < 2 AND `lastlogin` < UNIX_TIMESTAMP() - ".. cleanup[i].time ..";")
    end
 
    local DB_NOW = DB_BEFORE - getDBPlayersCount()
    if DB_NOW > 0 then
        local text = ">> [DBCLEANUP] "..DB_NOW.." inactive players have been deleted from database."
        print("" .. text .. "")
        local file = io.open("data/logs/db_cleanup.txt", "a")
        file:write("\n[".. os.date("%d %B %Y %X ", os.time()) .."] "..text.."")
        file:close()
    end
return true
end