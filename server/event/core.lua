local cfg = Config()

TriggerEvent(cfg.server().ESX.trigger, function(data) 
    ESX = data 
end)