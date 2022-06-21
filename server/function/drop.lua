local dbg = debug()

local function sdrop(data,...)
    if data then
        return string.format(data,...)
    else
        dbg.error("data variables needed")
    end
end

function pdrop(player,data,...)
    if player and data then
        DropPlayer(player,sdrop(data,...))
    else
        dbg.error("data variables needed")
    end
end