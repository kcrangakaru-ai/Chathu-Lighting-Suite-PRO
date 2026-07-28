local Fixtures = {}

Fixtures.List = {}

function Fixtures.Clear()

    Fixtures.List = {}

end

function Fixtures.Add(name, fixtureType)

    table.insert(Fixtures.List,{
        Name = name,
        Type = fixtureType
    })

end

function Fixtures.Count()

    return #Fixtures.List

end

return Fixtures
