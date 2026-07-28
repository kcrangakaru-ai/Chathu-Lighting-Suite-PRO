--------------------------------------------------
-- Logger
--------------------------------------------------

local Logger = {}

function Logger.Info(msg)
    gma.echo("[CLS] "..msg)
end

function Logger.Warn(msg)
    gma.echo("[WARNING] "..msg)
end

function Logger.Error(msg)
    gma.echo("[ERROR] "..msg)
end

return Logger
