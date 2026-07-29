--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Macro Builder
--------------------------------------------------

local MacroBuilder = {}

--------------------------------------------------
-- Build Macros
--------------------------------------------------

function MacroBuilder.Build()

    Logger.Info("Building Macros...")

    if not Config.Macros then
        Logger.Warn("No macros configured.")
        return
    end

    for _, macro in ipairs(Config.Macros) do

        Command.StoreMacro(macro.Number)

        Command.LabelMacro(
            macro.Number,
            macro.Name
        )

        for lineNumber, cmd in ipairs(macro.Lines) do

            Command.InsertMacroLine(
                macro.Number,
                lineNumber,
                cmd
            )

        end

        Logger.Success(
            "Macro Created : " ..
            macro.Name
        )

    end

    Logger.Success("Macro Builder Complete")

end

return MacroBuilder
