--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Scanner
--------------------------------------------------

local Scanner = {}

function Scanner.Scan()

    -- Clear previous scan results
    FixtureDatabase.Clear()

    Logger.Info("Scanning Fixtures...")

    for i = 1, 500 do

        local h = gma.show.getobj.handle("Fixture " .. i)

        if h then

            FixtureDatabase.Add({

                id = i,

                name = gma.show.getobj.name(h),

                class = gma.show.getobj.class(h)

            })

        end

    end

    Logger.Info("Scan Complete")

    return FixtureDatabase.GetAll()

end

return Scanner
