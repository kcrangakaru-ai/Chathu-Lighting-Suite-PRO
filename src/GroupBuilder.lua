--------------------------------------------------
-- Group Builder
--------------------------------------------------

local GroupBuilder = {}

function GroupBuilder.Build()

    Logger.Info("Building Groups...")

    local fixtures = FixtureDatabase.GetAll()

    if #fixtures == 0 then
        Logger.Warn("No fixtures found in FixtureDatabase.")
        return
    end

    local beam350 = {}
    local wash = {}

    for _, fixture in ipairs(fixtures) do

        local name = string.upper(fixture.name or "")

        if string.find(name, "350") then
            table.insert(beam350, tostring(fixture.id))

        elseif string.find(name, "WASH") then
            table.insert(wash, tostring(fixture.id))
        end

    end

    --------------------------------------------------
    -- Beam 350 Group
    --------------------------------------------------
    if #beam350 > 0 then

        gma.cmd("ClearAll")
        gma.cmd("Fixture " .. table.concat(beam350, " + "))
        gma.cmd("Store Group " .. Config.Groups.Beam350 .. " /o")
        gma.cmd('Label Group ' .. Config.Groups.Beam350 .. ' "350 BEAM"')

        Logger.Info("350 Beam Group Created (" .. #beam350 .. " fixtures)")
    else
        Logger.Warn("No 350 Beam fixtures found.")
    end

    --------------------------------------------------
    -- Wash Group
    --------------------------------------------------
    if #wash > 0 then

        gma.cmd("ClearAll")
        gma.cmd("Fixture " .. table.concat(wash, " + "))
        gma.cmd("Store Group " .. Config.Groups.Wash .. " /o")
        gma.cmd('Label Group ' .. Config.Groups.Wash .. ' "WASH"')

        Logger.Info("Wash Group Created (" .. #wash .. " fixtures)")
    else
        Logger.Warn("No Wash fixtures found.")
    end

    gma.cmd("ClearAll")

    Logger.Info("Group Builder Finished")

end

return GroupBuilder
