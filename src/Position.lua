--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Position
--------------------------------------------------

local Position = {}

Position.Presets = {}

--------------------------------------------------
-- Clear Positions
--------------------------------------------------

function Position.Clear()

    Position.Presets = {}

end

--------------------------------------------------
-- Add Position
--------------------------------------------------

function Position.Add(name)

    table.insert(Position.Presets, {
        Name = name or ""
    })

end

--------------------------------------------------
-- Get All Positions
--------------------------------------------------

function Position.GetAll()

    return Position.Presets

end

--------------------------------------------------
-- Count Positions
--------------------------------------------------

function Position.Count()

    return #Position.Presets

end

--------------------------------------------------
-- Default Positions
--------------------------------------------------

Position.Default = {
    Home      = "Home",
    Center    = "Center",
    StageLeft = "Stage Left",
    StageRight= "Stage Right",
    Front     = "Stage Front",
    Back      = "Stage Back",
    Audience  = "Audience"
}

--------------------------------------------------
-- Load Default Positions
--------------------------------------------------

function Position.LoadDefaults()

    Position.Clear()

    for _, name in pairs(Position.Default) do
        Position.Add(name)
    end

    Logger.Info("Loaded " .. Position.Count() .. " default positions.")

end

return Position
