--------------------------------------------------
-- Group Builder
--------------------------------------------------

local GroupBuilder = {}

function GroupBuilder.Build()

    Logger.Info("Building Groups...")

    local fixtures = Scanner.Scan()

    local beam350 = {}
    local wash = {}

    for _, f in ipairs(fixtures) do

        local name = string.upper(f.name)

        if string.find(name, "350") then
            table.insert(beam350, tostring(f.id))

        elseif string.find(name, "WASH") then
            table.insert(wash, tostring(f.id))
        end

    end

    -- Beam 350
    if #beam350 > 0 then

        gma.cmd("ClearAll")
        gma.cmd("Fixture "..table.concat(beam350," + "))
        gma.cmd("Store Group "..Config.Groups.Beam350.." /o")
        gma.cmd('Label Group '..Config.Groups.Beam350..' "350 BEAM"')

        Logger.Info("350 Beam Group Created")
    end

    -- Wash
    if #wash > 0 then

        gma.cmd("ClearAll")
        gma.cmd("Fixture "..table.concat(wash," + "))
        gma.cmd("Store Group "..Config.Groups.Wash.." /o")
        gma.cmd('Label Group '..Config.Groups.Wash..' "WASH"')

        Logger.Info("Wash Group Created")
    end

    gma.cmd("ClearAll")

end

return GroupBuilder
