--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Presets
--------------------------------------------------

local Presets = {}

Presets.List = {}

--------------------------------------------------
-- Clear Presets
--------------------------------------------------

function Presets.Clear()

    Presets.List = {}

end

--------------------------------------------------
-- Add Preset
--------------------------------------------------

function Presets.Add(category, name)

    table.insert(Presets.List, {
        Category = category or "",
        Name = name or ""
    })

end

--------------------------------------------------
-- Get All Presets
--------------------------------------------------

function Presets.GetAll()

    return Presets.List

end

--------------------------------------------------
-- Count Presets
--------------------------------------------------

function Presets.Count()

    return #Presets.List

end

--------------------------------------------------
-- Find Presets by Category
--------------------------------------------------

function Presets.GetByCategory(category)

    local result = {}

    for _, preset in ipairs(Presets.List) do

        if preset.Category == category then
            table.insert(result, preset)
        end

    end

    return result

end

--------------------------------------------------
-- Preset Categories
--------------------------------------------------

Presets.Category = {
    Position = "Position",
    Color    = "Color",
    Beam     = "Beam",
    Gobo     = "Gobo",
    Focus    = "Focus",
    Effects  = "Effects"
}

return Presets
