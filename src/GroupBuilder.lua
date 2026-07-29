--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Dynamic Group Builder
--------------------------------------------------

local GroupBuilder = {}

--------------------------------------------------
-- Build All Groups
--------------------------------------------------

function GroupBuilder.Build()

    Logger.Info("Building Fixture Groups...")

    local fixtures = FixtureDatabase.GetAll()

    if #fixtures == 0 then
        Logger.Warn("No fixtures found.")
        return
    end

    --------------------------------------------------
    -- Create ALL FIXTURES Group
    --------------------------------------------------

    local allFixtures = {}

    for _, fixture in ipairs(fixtures) do
        table.insert(allFixtures, tostring(fixture.id))
    end

    if #allFixtures > 0 then

        Command.Clear()
        Command.SelectFixtures(allFixtures)

        Command.StoreGroup(Config.FixtureTypes[1].Group)
        Command.LabelGroup(
            Config.FixtureTypes[1].Group,
            Config.FixtureTypes[1].Label
        )

        Logger.Success("ALL FIXTURES Group Created")

    end

    --------------------------------------------------
    -- Build Dynamic Groups
    --------------------------------------------------

    for index, fixtureType in ipairs(Config.FixtureTypes) do

        -- Skip ALL group
        if index > 1 then

            local list = {}

            for _, fixture in ipairs(fixtures) do

                local name = string.upper(fixture.name or "")

                if Utils.MatchKeywords(name, fixtureType.Keywords) then
                    table.insert(list, tostring(fixture.id))
                end

            end

            if #list > 0 then

                Command.Clear()

                Command.SelectFixtures(list)

                Command.StoreGroup(fixtureType.Group)

                Command.LabelGroup(
                    fixtureType.Group,
                    fixtureType.Label
                )

                Logger.Success(
                    fixtureType.Label ..
                    " Group Created (" ..
                    #list ..
                    " Fixtures)"
                )

            else

                Logger.Warn(
                    fixtureType.Label ..
                    " Fixtures Not Found"
                )

            end

        end

    end

    --------------------------------------------------
    -- Cleanup
    --------------------------------------------------

    Command.Clear()

    Logger.Success("Dynamic Group Builder Finished")

end

return GroupBuilder
