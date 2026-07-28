local Position = {}

Position.Presets = {}

function Position.Clear()

    Position.Presets = {}

end

function Position.Add(name)

    table.insert(Position.Presets,{
        Name = name
    })

end

function Position.Count()

    return #Position.Presets

end

return Position
