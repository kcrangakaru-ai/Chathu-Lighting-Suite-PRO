--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Executor Builder
--------------------------------------------------

local ExecutorBuilder = {}

--------------------------------------------------
-- Build Executors
--------------------------------------------------

function ExecutorBuilder.Build()

    Logger.Info("Building Executors...")

    if not Config.Executors then
        Logger.Warn("No Executors Configured.")
        return
    end

    for _, executor in ipairs(Config.Executors) do

        if executor.Type == "Group" then

            Command.AssignExecutor(
                executor.Number,
                executor.Object
            )

            Command.LabelExecutor(
                executor.Number,
                executor.Label
            )

            Logger.Success(
                executor.Label ..
                " Executor Created"
            )

        end

    end

    Logger.Success("Executor Builder Complete")

end

return ExecutorBuilder
