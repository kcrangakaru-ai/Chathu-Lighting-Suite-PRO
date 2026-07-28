local Logger = {}

function Logger.Info(message)
    gma.echo("[INFO] " .. message)
end

function Logger.Warning(message)
    gma.echo("[WARNING] " .. message)
end

function Logger.Error(message)
    gma.echo("[ERROR] " .. message)
end

return Logger
