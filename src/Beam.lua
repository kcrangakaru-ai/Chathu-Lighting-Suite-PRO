local Beam = {}

Beam.Presets = {}

function Beam.Clear()

    Beam.Presets = {}

end

function Beam.Add(name)

    table.insert(Beam.Presets,{
        Name = name
    })

end

function Beam.Count()

    return #Beam.Presets

end

return Beam
