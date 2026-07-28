--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Logger
--------------------------------------------------

local Logger = {}

--------------------------------------------------
-- Information
--------------------------------------------------

function Logger.Info(msg)
    gma.echo("[INFO] " .. tostring(msg))
end

--------------------------------------------------
-- Warning
--------------------------------------------------

function Logger.Warn(msg)
    gma.echo("[WARNING] " .. tostring(msg))
end

--------------------------------------------------
-- Error
--------------------------------------------------

function Logger.Error(msg)
    gma.echo("[ERROR] " .. tostring(msg))
end

--------------------------------------------------
-- Success
--------------------------------------------------

function Logger.Success(msg)
    gma.echo("[SUCCESS] " .. tostring(msg))
end

--------------------------------------------------
-- Debug
--------------------------------------------------

function Logger.Debug(msg)

    if Config and Config.Debug then
        gma.echo("[DEBUG] " .. tostring(msg))
    end

end

--------------------------------------------------
-- Banner
--------------------------------------------------

function Logger.Banner()

    Logger.Info("===================================")
    Logger.Info(Config.Name)
    Logger.Info("Version : " .. Config.Version)
    Logger.Info("Author  : " .. Config.Author)
    Logger.Info("===================================")

end

return Logger
