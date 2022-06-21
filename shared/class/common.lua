function Config()
    self = {}
    
    self.client = function()
        return Config
    end

    self.server = function()
        return Config
    end

    self.shared = function()
        return Config
    end

    return self
end