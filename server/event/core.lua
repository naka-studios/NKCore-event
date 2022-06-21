local cfg = Config()

TriggerEvent(cfg.server().ESX.trigger, function(obj) ESX = obj end)