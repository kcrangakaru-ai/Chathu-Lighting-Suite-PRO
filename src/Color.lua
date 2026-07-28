--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Color
--------------------------------------------------

local Color = {}

Color.Presets = {}

--------------------------------------------------
-- Clear Colors
--------------------------------------------------

function Color.Clear()

    Color.Presets = {}

end

--------------------------------------------------
-- Add Color
--------------------------------------------------

function Color.Add(name)

    table.insert(Color.Presets, {
        Name = name or ""
    })

end

--------------------------------------------------
-- Get All Colors
--------------------------------------------------

function Color.GetAll()

    return Color.Presets

end

--------------------------------------------------
-- Count Colors
--------------------------------------------------

function Color.Count()

    return #Color.Presets

end

--------------------------------------------------
-- Default Colors
--------------------------------------------------

Color.Default = {
    White   = "White",
    Red     = "Red",
    Green   = "Green",
    Blue    = "Blue",
    Cyan    = "Cyan",
    Magenta = "Magenta",
    Yellow  = "Yellow",
    Amber   = "Amber",
    UV      = "UV",
    CTO     = "CTO",
    CTB     = "CTB"
}

--------------------------------------------------
-- Load Default Colors
--------------------------------------------------

function Color.LoadDefaults()

    Color.Clear()

    for _, name in pairs(Color.Default) do
        Color.Add(name)
    end

    Logger.Info("Loaded " .. Color.Count() .. " default colors.")

end

return Color
