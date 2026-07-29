--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Show Builder
--------------------------------------------------

local ShowBuilder = {}

--------------------------------------------------
-- Build Complete Show
--------------------------------------------------

function ShowBuilder.Build()

    Logger.Info("Starting Show Builder...")

    --------------------------------------------------
    -- Scan Fixtures
    --------------------------------------------------

    Scanner.Scan()

    Logger.Info(
        "Fixtures Found : " ..
        FixtureDatabase.Count()
    )

    --------------------------------------------------
    -- Build Groups
    --------------------------------------------------

    GroupBuilder.Build()

    --------------------------------------------------
    -- Build Position Presets
    --------------------------------------------------

    Position.Build()

    --------------------------------------------------
    -- Build Color Presets
    --------------------------------------------------

    Color.Build()

    --------------------------------------------------
    -- Future Builders
    --------------------------------------------------

    -- Beam.Build()
    -- Focus.Build()
    -- Effects.Build()
    -- Macro.Build()
    -- Executor.Build()

    Logger.Success("Show Builder Complete")

end

--------------------------------------------------
-- Return Module
--------------------------------------------------

return ShowBuilder
