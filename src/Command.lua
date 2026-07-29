--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Command Engine
--------------------------------------------------

local Command = {}

--------------------------------------------------
-- Execute Command
--------------------------------------------------

function Command.Run(cmd)

    Logger.Debug("CMD : " .. cmd)
    gma.cmd(cmd)

end

--------------------------------------------------
-- Clear Programmer
--------------------------------------------------

function Command.Clear()

    Command.Run("ClearAll")

end

--------------------------------------------------
-- Store Group
--------------------------------------------------

function Command.StoreGroup(number)

    Command.Run("Store Group " .. number .. " /o")

end

--------------------------------------------------
-- Label Group
--------------------------------------------------

function Command.LabelGroup(number, name)

    Command.Run('Label Group ' .. number .. ' "' .. name .. '"')

end

--------------------------------------------------
-- Store Preset
--------------------------------------------------

function Command.StorePreset(pool, number)

    Command.Run("Store Preset " .. pool .. "." .. number .. " /o")

end

--------------------------------------------------
-- Label Preset
--------------------------------------------------

function Command.LabelPreset(pool, number, name)

    Command.Run('Label Preset ' .. pool .. "." .. number .. ' "' .. name .. '"')

end

--------------------------------------------------
-- Select Fixtures
--------------------------------------------------

function Command.SelectFixtures(list)

    Command.Run("Fixture " .. table.concat(list, " + "))

end

--------------------------------------------------
-- Return Module
--------------------------------------------------

return Command
