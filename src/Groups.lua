local Groups = {}

Groups.List = {}

function Groups.Clear()

    Groups.List = {}

end

function Groups.Create(name, fixtures)

    table.insert(Groups.List,{
        Name = name,
        Fixtures = fixtures
    })

end

function Groups.Count()

    return #Groups.List

end

return Groups
