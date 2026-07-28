--==================================================
-- Chathu Lighting Suite PRO
-- Main.lua
-- Version 1.0.0
--==================================================

local Config = require("Config")
local Logger = require("Logger")
local UI = require("UI")

local Plugin = {}

function Plugin.Start()

    Logger.Info("===================================")
    Logger.Info(Config.Name)
    Logger.Info("Version : " .. Config.Version)
    Logger.Info("Author  : " .. Config.Author)
    Logger.Info("===================================")

    UI.ShowWelcome()

    Logger.Info("Plugin Started Successfully")

end

return Plugin
