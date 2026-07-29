--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Position Engine
--------------------------------------------------

local Position = {}

--------------------------------------------------
-- Store Single Position Preset
--------------------------------------------------

function Position.Store(number, name)

    local pool = Config.PresetPools.Position

    Logger.Info("Creating Position Preset : " .. name)

    gma.cmd("Store Preset " .. pool .. "." .. number .. " /o")
    gma.cmd('Label Preset ' .. pool .. "." .. number .. ' "' .. name .. '"')

end

--------------------------------------------------
-- Build Default Position Presets
--------------------------------------------------

function Position.Build()

    Logger.Info("Building Position Presets...")

    for _, preset in ipairs(Config.PositionPresets) do

        Position.Store(
            preset.Number,
            preset.Name
        )

    end

    Logger.Success("Position Presets Complete")

end

return Position
