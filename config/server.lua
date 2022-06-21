Server_Config = {}

Server_Config.ESX = {
    enable = true,
    trigger = "esx:getSharedObject"
}

Server_Config.Webhook = {
    enable = true,
    avatar = "profile_bot",
    url = "discord_webhook",
    thumbnail = "",
    author = {
        name = "Benjamin4k",
        icon = "",
        url = ""
    }
}

Server_Config.Drop = {
    prefix = "NKCore event security"
    message = {
        EventLimit = "Trigger abuse detect",
        EventWhitelist = "Attempt to trigger whitelisted event"
    }
}

Server_Config.EventLimit = {
    enable = true,
    list = {
        ["gcPhone:transfer"] = 5,
        ["gcPhone:sendMessage"] = 20,
        ["esx_policejob:handcuff"] = 20,
        ["esx_policejob:billPlayer"] = 20,
        ["InteractSound_SV:PlayOnAl"] = 50,
        ["InteractSound_SV:PlayWithinDistance"] = 3,
        ["esx_communityservice:sendToCommunityService"] = 15,
        ["esx_communityservicesex:sendToCommunityService"] = 15
    }
}

Server_Config.EventWhitelist = {
    enable = true,
    list = {
        { 
            event = "esx_policejob:handcuff", 
            job = "police", "sheriff", "fbi", "ambulance", 
            reason = "She tried to handcuff her without the police." 
        },
        { 
            event = "esx_vehicleshop:putStockItems", 
            job = "police", "sheriff", "fbi", "ambulance", 
            reason = "Tried to put items in the safe without Car Dealer." 
        },
        { 
            event = "lester:vendita", 
            job = "police", "sheriff", "fbi", "ambulance", 
            reason = "Money Printing Method 001." 
        },
        { 
            event = "esx_communityservice:sendToCommunityService", 
            job = "police", "sheriff", "fbi", "ambulance", 
            reason = "The public acted." 
        }
    }
}