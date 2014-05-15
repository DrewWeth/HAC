local config = {
MaxPlayer = 20,
fight_skills = {
        ['fist'] = 0,
        ['club'] = 1,
        ['sword'] = 2,
        ['axe'] = 3,
        ['distance'] = 4,
        ['shielding'] = 5,
        ['fishing'] = 6,
        ['dist'] = 4,
        ['shield'] = 5,
        ['fish'] = 6,
},
other_skills = {
[''] = "level",
['level'] = "level",
['magic'] = "maglevel",
['health'] = "healthmax",
['mana'] = "manamax"
},
vocations = {
['sorcerer'] = {1,5},
['druid'] = {2,6},
['paladin'] = {3,7},
['knight'] = {4,8}
}
}
function onSay(cid, words, param)
local param,str = string.lower(param),""
if param ~= "frags" and not config.fight_skills[param] and not config.other_skills[param] and not config.vocations[param] then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "este rank não existe.") return true
end
str,k = "--[ RANK "..(param == "" and "LEVEL" or string.upper(param)).." ]--\n\n",1
if param == "frags" then
   local time,T = os.time(),{}
   local times = {today = (time - 86400), week = (time - (7 * 86400))}
     local getPlayer = db.getResult("SELECT `id` FROM `players`;")
     repeat
     if (getPlayer:getID() ~= -1) then
     local getGuid = getPlayer:getDataInt("id")
    local contents, result = {day = {}, week = {}, month = {}}, db.getResult("SELECT `pd`.`date`, `pd`.`level`, `p`.`name` FROM `player_killers` pk LEFT JOIN `killers` k ON `pk`.`kill_id` = `k`.`id` LEFT JOIN `player_deaths` pd ON `k`.`death_id` = `pd`.`id` LEFT JOIN `players` p ON `pd`.`player_id` = `p`.`id` WHERE `pk`.`player_id` = "..tonumber(getGuid).." AND `k`.`unjustified` = 1 AND `pd`.`date` >= " .. (time - (30 * 86400)) .. " ORDER BY `pd`.`date` DESC")
    if (result:getID() ~= -1) then
            repeat
                      k = k + 1
                    local content = {date = result:getDataInt("date")}
                    if(content.date > times.today) then
                            table.insert(contents.day, content)
                    elseif(content.date > times.week) then
                            table.insert(contents.week, content)
                    else
                            table.insert(contents.month, content)
                    end
            size = {day = table.maxn(contents.day),week = table.maxn(contents.week),month = table.maxn(contents.month)}
            until not result:next() or k >= config.MaxPlayer
            table.insert(T,{getGuid,size.day+size.week+size.month})
            result:free()
    end
    end 
until not getPlayer:next() or k >= config.MaxPlayer   
table.sort(T, function(x,y) return x[2] > y[2] end)
for _,t in ipairs(T) do 
str = str .."\n "..getPlayerNameByGUID(t[1]).." - ["..t[2].."]"
end
doShowTextDialog(cid,6500, str)
return true
end
query = config.fight_skills[param] and db.getResult("SELECT `player_id`, `value` FROM `player_skills` WHERE `skillid` = "..config.fight_skills[param].." ORDER BY `value` DESC;") or config.other_skills[param] and db.getResult("SELECT `name`, `"..config.other_skills[param].."` FROM `players` WHERE `id` > 6 AND `group_id` < 2 ORDER BY `"..config.other_skills[param].."` DESC, `name` ASC;") or db.getResult("SELECT `name`, `level` FROM `players` WHERE `group_id` <= 2 AND `vocation` = "..config.vocations[param][1].." or `vocation` = "..config.vocations[param][2].." ORDER BY `level` DESC;") 
if (query:getID() ~= -1) then 
while true do
str = str .. "\n " .. k .. ". "..(config.fight_skills[param] and getPlayerNameByGUID(query:getDataString("player_id")) or query:getDataString("name")).." - [" .. query:getDataInt(config.fight_skills[param] and "value" or config.vocations[param] and "level" or config.other_skills[param]) .. "]"
k = k + 1
if not(query:next()) or k > config.MaxPlayer then
break 
end 
end 
query:free()
end
doShowTextDialog(cid,6500, str)
return true
end