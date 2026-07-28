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

    local fixtures = Scanner.Scan()

    Logger.Info("Fixtures Found : " .. #fixtures)

    GroupBuilder.Build()

    Logger.Info("Plugin Finished")

end
