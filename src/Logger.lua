local Logger = {}

function Logger.Info(msg)
    gma.echo("[INFO] " .. msg)
end

function Logger.Warning(msg)
    gma.echo("[WARNING] " .. msg)
end

function Logger.Error(msg)
    gma.echo("[ERROR] " .. msg)
end

function Logger.Debug(msg)

    if true then
        gma.echo("[DEBUG] " .. msg)
    end

end

return Logger
