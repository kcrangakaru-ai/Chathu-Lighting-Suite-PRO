local Busking = {}

Busking.Pages = {}

function Busking.Clear()

    Busking.Pages = {}

end

function Busking.Add(name)

    table.insert(Busking.Pages,{
        Name = name
    })

end

function Busking.Count()

    return #Busking.Pages

end

return Busking
