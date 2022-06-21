local function dformat(data,...)
    return string.format(data,...)
end

function debug()
    local self = {}

    self.title = 'NKCore'

    self.info = function(data,...)
        if data then
            print('^5['..self.title..' | info] '..dformat(data,...))
        else
            self.error('data variables needed')
        end
    end

    self.success = function(data,...)
        if data then
            print('^5['..self.title..' | success] '..dformat(data,...))
        else
            self.error('data variables needed')
        end
    end

    self.error = function(data,...)
        if data then
            print('^5['..self.title..' | error] '..dformat(data,...))
        else
            self.error('data variables needed')
        end
    end


    self.debug = function(data,...)
        if data then
            print('^5['..self.title..' | debug] '..dformat(data,...))
        else
            self.error('data variables needed')
        end
    end

    self.setupTitle = function(data)
        self.title = data
    end

    self.getTitle = function()
        return self.title
    end

    return self
end