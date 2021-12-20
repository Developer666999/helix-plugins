PLUGIN.name = "Whitelist"
PLUGIN.author = "developer"
PLUGIN.desc = "Система вайтлист для вашего сервера"

local WhiteList = true
local WhiteListPlayers = {
    ["76561198832844385"] = true, 
    [""]  = true, --
    [""]  = true, --

}

local ReasonKick = "Для игры на сервере подайте UCP заявку! \nС"

hook.Add("CheckPassword", "WhiteListEnabled", function( steamid64, ip, svpass, clpass, nick )
    if not WhiteList then return end
    if not WhiteListPlayers[steamid64] then 
        print(Format("%s попытался зайти на сервер!(%s)",nick,steamid64))
        return false, ReasonKick
    end
end)