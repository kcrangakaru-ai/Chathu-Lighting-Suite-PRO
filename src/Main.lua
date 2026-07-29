--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Main
--------------------------------------------------

return function()

    Logger.Banner()

    local success, err = pcall(function()

        ShowBuilder.Build()

    end)

    if success then
        Logger.Success("Plugin Finished Successfully")
    else
        Logger.Error("Plugin Error : " .. tostring(err))
    end

    if Config.AutoClear then
        Command.Clear()
    end

end
