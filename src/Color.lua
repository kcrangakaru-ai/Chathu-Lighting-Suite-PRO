local Color = {}

Color.Presets = {}

function Color.Clear()

    Color.Presets = {}

end

function Color.Add(name)

    table.insert(Color.Presets,{
        Name = name
    })

end

function Color.Count()

    return #Color.Presets

end

return Color
