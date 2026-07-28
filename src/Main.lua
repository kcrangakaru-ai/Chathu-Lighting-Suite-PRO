--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Main
--------------------------------------------------

return function()

    Logger.Info("===================================")
    Logger.Info(Config.Name)
    Logger.Info("Version : " .. Config.Version)
    Logger.Info("Author  : " .. Config.Author)
    Logger.Info("===================================")

    local success, err = pcall(function()

        --------------------------------------------------
        -- Scan Fixtures
        --------------------------------------------------
        local fixtures = Scanner.Scan()

        Logger.Info("Fixtures Found : " .. FixtureDatabase.Count())

        --------------------------------------------------
        -- Build Groups
        --------------------------------------------------
        GroupBuilder.Build()

    end)

    if success then
        Logger.Info("Plugin Finished Successfully")
    else
        Logger.Error("Plugin Error : " .. tostring(err))
    end

    gma.cmd("ClearAll")

end
