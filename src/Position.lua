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

    Command.StorePreset(pool, number)

    Command.LabelPreset(
        pool,
        number,
        name
    )

end

--------------------------------------------------
-- Build Default Position Presets
--------------------------------------------------

function Position.Build()

    Logger.Info("Building Position Presets...")

    if not Config.PositionPresets then
        Logger.Warn("No Position Presets configured.")
        return
    end

    for _, preset in ipairs(Config.PositionPresets) do

        Position.Store(
            preset.Number,
            preset.Name
        )

    end

    Logger.Success(
        "Position Presets Complete (" ..
        #Config.PositionPresets ..
        " presets)"
    )

end

--------------------------------------------------
-- Return Module
--------------------------------------------------

return Position
