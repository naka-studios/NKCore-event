function Config()
    self = {}
    
    self.client = function()
        return Client_Config
    end

    self.server = function()
        return Server_Config
    end

    self.shared = function()
        return Shared_Config
    end

    return self
end