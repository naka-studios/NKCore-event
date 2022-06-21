local cfg Config()

if cfg.server().ESX.enable and cfg.server().Webhook.enable then
    function webhook(source,args)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)
        local player_name = GetPlayerName(src)
        local steamid, license, xbl, playerip, discord, liveid = NKCore.GetIdentifier(src)
        local embed = {{
            ["author"] = {
                ["name"] = cfg.server().Webhook.author.name,
                ["url"] = cfg.server().Webhook.author.url,
                ["icon_url"] = cfg.server().Webhook.author.icon
            },
            ["thumbnail"] = {
                ["url"] = cfg.server().Webhook.thumbnail
            },
            ["fields"] = {
                {
                    ["name"] = args.title,
                    ["value"] = args.description,
                    ["inline"] = false,
                },
                {
                    ["name"] = "🍂",
                    ["value"] = "┌──── Extra Details: ────┐\n> "..steamid.."\n> "..license.."\n> "..playerip.."\n> "..liveid.."\n> "..discord.."",
                    ["inline"] = true
                }
            },
            ['timestamp'] = os.date('!%Y-%m-%dT%H:%M:%SZ')
        }}
        Wait(tonumber(1000))
        PerformHttpRequest(cfg.server().Webhook.url, function(err, text, headers) end, 'POST', json.encode({username = player_name, embeds = embed, avatar_url = cfg.server().Webhook.avatar}), { ['Content-Type'] = 'application/json' })
    end
end