local Presets = {}

Presets.List = {}

function Presets.Clear()

    Presets.List = {}

end

function Presets.Add(category, name)

    table.insert(Presets.List,{
        Category = category,
        Name = name
    })

end

function Presets.Count()

    return #Presets.List

end

return Presets
