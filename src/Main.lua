--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Main
--------------------------------------------------

return function()

    Logger.Banner()

    local success, err = pcall(function()

        --------------------------------------------------
        -- Scan Fixtures
        --------------------------------------------------
        Scanner.Scan()

        Logger.Info("Fixtures Found : " .. FixtureDatabase.Count())

        --------------------------------------------------
        -- Build Groups
        --------------------------------------------------
        GroupBuilder.Build()

        --------------------------------------------------
        -- Build Position Presets
        --------------------------------------------------
        Position.Build()

        --------------------------------------------------
        -- Future Modules
        --------------------------------------------------
        -- Color.Build()
        -- Beam.Build()
        -- Focus.Build()
        -- Effects.Build()

    end)

    --------------------------------------------------
    -- Result
    --------------------------------------------------

    if success then
        Logger.Success("Plugin Finished Successfully")
    else
        Logger.Error("Plugin Error : " .. tostring(err))
    end

    --------------------------------------------------
    -- Cleanup
    --------------------------------------------------

    if Config.AutoClear then
        gma.cmd("ClearAll")
    end

end
