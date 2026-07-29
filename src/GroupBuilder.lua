--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Group Builder
--------------------------------------------------

local GroupBuilder = {}

--------------------------------------------------
-- Build Groups
--------------------------------------------------

function GroupBuilder.Build()

    Logger.Info("Building Groups...")

    local fixtures = FixtureDatabase.GetAll()

    if #fixtures == 0 then
        Logger.Warn("No fixtures found in FixtureDatabase.")
        return
    end

    local beam350 = {}
    local wash = {}

    --------------------------------------------------
    -- Sort Fixtures
    --------------------------------------------------

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

        Command.Clear()

        Command.SelectFixtures(beam350)

        Command.StoreGroup(Config.Groups.Beam350)

        Command.LabelGroup(
            Config.Groups.Beam350,
            "350 BEAM"
        )

        Logger.Success(
            "350 Beam Group Created (" ..
            #beam350 ..
            " fixtures)"
        )

    else

        Logger.Warn("No 350 Beam fixtures found.")

    end

    --------------------------------------------------
    -- Wash Group
    --------------------------------------------------

    if #wash > 0 then

        Command.Clear()

        Command.SelectFixtures(wash)

        Command.StoreGroup(Config.Groups.Wash)

        Command.LabelGroup(
            Config.Groups.Wash,
            "WASH"
        )

        Logger.Success(
            "Wash Group Created (" ..
            #wash ..
            " fixtures)"
        )

    else

        Logger.Warn("No Wash fixtures found.")

    end

    --------------------------------------------------
    -- Cleanup
    --------------------------------------------------

    Command.Clear()

    Logger.Success("Group Builder Finished")

end

return GroupBuilder
