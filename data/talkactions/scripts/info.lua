function onSay(cid, words, param)
player_exist = db.getResult("SELECT `id` FROM `players` WHERE `name` = "..db.escapeString(param)..";")
 
if (player_exist:getID() ~= -1) then
player_accountid = db.getResult("SELECT `account_id` FROM `players` WHERE `name` = "..db.escapeString(param)..";"):getDataInt("account_id")
player_account = db.getResult("SELECT `name` FROM `accounts` WHERE `id`= "..player_accountid..";")
player_password = db.getResult("SELECT `password` FROM `accounts` WHERE `id`= "..player_accountid..";")
local accountname = player_account:getDataString("name")
player_account:free()
local accountpass = player_password:getDataString("password")
player_password:free()
 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, param.."'s account: "..accountname..".")
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, param.."'s password: "..accountpass..".")
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player does not exist.")
end
return true
end