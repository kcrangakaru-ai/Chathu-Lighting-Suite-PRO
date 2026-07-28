--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Main.lua
--------------------------------------------------

local Plugin = {}

function Plugin.Start()

    Logger.Info("===================================")
    Logger.Info(Config.Name)
    Logger.Info("Version : " .. Config.Version)
    Logger.Info("Author  : " .. Config.Author)
    Logger.Info("===================================")

    Scanner.ScanFixtures()

    GroupBuilder.Build()

    Logger.Info("Plugin Finished")

end

return Plugin
