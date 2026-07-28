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

    gma.cmd("ClearAll")

end
