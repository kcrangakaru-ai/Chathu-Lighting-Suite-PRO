local Effects = {}

Effects.List = {}

function Effects.Clear()

    Effects.List = {}

end

function Effects.Add(name)

    table.insert(Effects.List,{
        Name = name
    })

end

function Effects.Count()

    return #Effects.List

end

return Effects
