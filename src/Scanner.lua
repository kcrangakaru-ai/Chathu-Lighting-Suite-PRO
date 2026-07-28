--------------------------------------------------
-- Scanner
--------------------------------------------------

local Scanner = {}

function Scanner.Scan()

    local fixtures = {}

    for i = 1,500 do

        local h = gma.show.getobj.handle("Fixture "..i)

        if h then

            fixtures[#fixtures+1] = {
                id = i,
                name = gma.show.getobj.name(h),
                class = gma.show.getobj.class(h)
            }

        end

    end

    return fixtures

end

return Scanner
