--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Page Builder
--------------------------------------------------

local PageBuilder = {}

--------------------------------------------------
-- Build Pages
--------------------------------------------------

function PageBuilder.Build()

    Logger.Info("Building Pages...")

    if not Config.Pages then
        Logger.Warn("No Pages Configured.")
        return
    end

    for _, page in ipairs(Config.Pages) do

        Command.StorePage(page.Number)

        Command.LabelPage(
            page.Number,
            page.Name
        )

        Logger.Success(
            "Page Created : " ..
            page.Name
        )

    end

    Logger.Success("Page Builder Complete")

end

return PageBuilder
