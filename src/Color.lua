--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Color Engine
--------------------------------------------------

local Color = {}

--------------------------------------------------
-- Store Single Color Preset
--------------------------------------------------

function Color.Store(number, name)

    local pool = Config.PresetPools.Color

    Logger.Info("Creating Color Preset : " .. name)

    Command.StorePreset(pool, number)

    Command.LabelPreset(
        pool,
        number,
        name
    )

end

--------------------------------------------------
-- Build Default Color Presets
--------------------------------------------------

function Color.Build()

    Logger.Info("Building Color Presets...")

    if not Config.ColorPresets then
        Logger.Warn("No Color Presets configured.")
        return
    end

    for _, preset in ipairs(Config.ColorPresets) do

        Color.Store(
            preset.Number,
            preset.Name
        )

    end

    Logger.Success(
        "Color Presets Complete (" ..
        #Config.ColorPresets ..
        " presets)"
    )

end

--------------------------------------------------
-- Return Module
--------------------------------------------------

return Color
