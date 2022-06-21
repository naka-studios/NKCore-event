CreateThread(function()
    local cfg = Config()

	while true do
		Data = {}
		Wait(cfg.server().wait)
	end
end)