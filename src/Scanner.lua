--------------------------------------------------
-- Scanner
--------------------------------------------------

FixtureDatabase.Clear()

function Scanner.Scan()

    local fixtures = {}

    for i = 1,500 do

        local h = gma.show.getobj.handle("Fixture "..i)

        if h then

            FixtureDatabase.Add({

    id = i,

    name = gma.show.getobj.name(h),

    class = gma.show.getobj.class(h)

}

        end

    end

   return FixtureDatabase.GetAll()

end

return Scanner
