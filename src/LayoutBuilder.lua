--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Layout Builder
--------------------------------------------------

local LayoutBuilder = {}

--------------------------------------------------
-- Build Layouts
--------------------------------------------------

function LayoutBuilder.Build()

    Logger.Info("Building Layouts...")

    if not Config.Layouts then
        Logger.Warn("No Layouts Configured.")
        return
    end

    for _, layout in ipairs(Config.Layouts) do

        Command.StoreLayout(layout.Number)

        Command.LabelLayout(
            layout.Number,
            layout.Name
        )

        Logger.Success(
            "Layout Created : " ..
            layout.Name
        )

    end

    Logger.Success("Layout Builder Complete")

end

return LayoutBuilder
