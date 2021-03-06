local cfg = Config()
local kick = pdrop()

if cfg.server().EventLimit.enable then
    for k,v in pairs(cfg.server().EventLimit.list) do
        RegisterServerEvent(k)
        AddEventHandler(k, function(...)
            local player = source
            if Data[player] then
                if Data[player] > v then
                    kick(player,cfg.server().Drop.prefix.." | "cfg.server().Drop.message.EventLimit)
                else
                    Data[player] = Data[player] + 1
                end
            else
                Data[player] = 1
            end
        end)
    end
end

if cfg.server().ESX.enable and cfg.server().EventWhitelist.enable then
    for a,b in pairs(cfg.server().EventWhitelist.list) do
        RegisterServerEvent(b.event)
        AddEventHandler(b.event, function(...)
            local src = source
            local name = GetPlayerName(src)
            local xPlayer = ESX.GetPlayerFromId(src)
            local job = xPlayer.job.name
            local whitelist = b.job
            
            if job ~= whitelist then 
                webhook(src,{title = name, description = {"> ID:"..src.."\n> Trigger:"..b.event.."\n> Reason:"..b.reason..""}})
                kick(src,cfg.server().Drop.prefix.." | "cfg.server().Drop.message.EventWhitelist)
            end
        end)
    end
end