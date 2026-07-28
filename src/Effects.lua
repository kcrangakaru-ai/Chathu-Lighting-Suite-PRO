--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Effects
--------------------------------------------------

local Effects = {}

Effects.List = {}

--------------------------------------------------
-- Clear Effects
--------------------------------------------------

function Effects.Clear()

    Effects.List = {}

end

--------------------------------------------------
-- Add Effect
--------------------------------------------------

function Effects.Add(name)

    table.insert(Effects.List, {
        Name = name or ""
    })

end

--------------------------------------------------
-- Get All Effects
--------------------------------------------------

function Effects.GetAll()

    return Effects.List

end

--------------------------------------------------
-- Count Effects
--------------------------------------------------

function Effects.Count()

    return #Effects.List

end

--------------------------------------------------
-- Default Effects
--------------------------------------------------

Effects.Default = {
    "Circle",
    "Wave",
    "Fan",
    "Chase",
    "Random",
    "Pulse",
    "Swing",
    "Figure 8"
}

--------------------------------------------------
-- Load Default Effects
--------------------------------------------------

function Effects.LoadDefaults()

    Effects.Clear()

    for _, effect in ipairs(Effects.Default) do
        Effects.Add(effect)
    end

    Logger.Info("Loaded " .. Effects.Count() .. " default effects.")

end

--------------------------------------------------
-- Create Effect (Foundation)
--------------------------------------------------

function Effects.Create(name)

    Logger.Info("Creating Effect : " .. tostring(name))

    -- Future:
    -- gma.cmd("Store Effect ...")
    -- gma.cmd("Label Effect ...")

end

return Effects
