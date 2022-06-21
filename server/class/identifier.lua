function NKCore.GetIdentifier(data)
    local self = {}

    self.steam = nil
    self.ip = nil
    self.discord = nil
    self.license = nil
    self.xbox = nil
    self.live = nil

    if data then
        for i = 0, GetNumPlayerIdentifiers(data) - 1 do
            local id = GetPlayerIdentifier(data, i)

            if string.find(id, "steam") then
                self.steam = id
            elseif string.find(id, "ip") then
                self.ip = id
            elseif string.find(id, "discord") then
                self.discord = id
            elseif string.find(id, "license") then
                self.license = id
            elseif string.find(id, "xbl") then
                self.xbl = id
            elseif string.find(id, "live") then
                self.live = id
            end
        end

        return self
    else
        local dbg = debug()
        dbg.error("data variables needed")

        return nil
    end
end