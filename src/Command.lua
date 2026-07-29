--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Command Engine
--------------------------------------------------

local Command = {}

--------------------------------------------------
-- Execute Command
--------------------------------------------------

function Command.Run(cmd)

    Logger.Debug("CMD : " .. cmd)
    gma.cmd(cmd)

end

--------------------------------------------------
-- Clear Programmer
--------------------------------------------------

function Command.Clear()

    Command.Run("ClearAll")

end

--------------------------------------------------
-- Fixture Selection
--------------------------------------------------

function Command.SelectFixtures(list)

    if #list == 0 then
        return
    end

    Command.Run(
        "Fixture " ..
        table.concat(list, " + ")
    )

end

--------------------------------------------------
-- Store Group
--------------------------------------------------

function Command.StoreGroup(number)

    Command.Run(
        "Store Group " ..
        number ..
        " /o"
    )

end

--------------------------------------------------
-- Label Group
--------------------------------------------------

function Command.LabelGroup(number,name)

    Command.Run(
        'Label Group ' ..
        number ..
        ' "' ..
        name ..
        '"'
    )

end

--------------------------------------------------
-- Store Preset
--------------------------------------------------

function Command.StorePreset(pool,number)

    Command.Run(
        "Store Preset " ..
        pool ..
        "." ..
        number ..
        " /o"
    )

end

--------------------------------------------------
-- Label Preset
--------------------------------------------------

function Command.LabelPreset(pool,number,name)

    Command.Run(
        'Label Preset ' ..
        pool ..
        "." ..
        number ..
        ' "' ..
        name ..
        '"'
    )

end

--------------------------------------------------
-- Store Macro
--------------------------------------------------

function Command.StoreMacro(number)

    Command.Run(
        "Store Macro " ..
        number ..
        " /o"
    )

end

--------------------------------------------------
-- Label Macro
--------------------------------------------------

function Command.LabelMacro(number,name)

    Command.Run(
        'Label Macro ' ..
        number ..
        ' "' ..
        name ..
        '"'
    )

end

--------------------------------------------------
-- Insert Macro Line
--------------------------------------------------

function Command.InsertMacroLine(number,line,cmd)

    Command.Run(
        'Assign Macro ' ..
        number ..
        "." ..
        line ..
        ' /cmd="' ..
        cmd ..
        '"'
    )

end

--------------------------------------------------
-- Store Sequence
--------------------------------------------------

function Command.StoreSequence(number)

    Command.Run(
        "Store Sequence " ..
        number ..
        " /o"
    )

end

--------------------------------------------------
-- Label Sequence
--------------------------------------------------

function Command.LabelSequence(number,name)

    Command.Run(
        'Label Sequence ' ..
        number ..
        ' "' ..
        name ..
        '"'
    )

end

--------------------------------------------------
-- Store Cue
--------------------------------------------------

function Command.StoreCue(sequence,cue)

    Command.Run(
        "Store Cue " ..
        cue ..
        " Sequence " ..
        sequence ..
        " /o"
    )

end

--------------------------------------------------
-- Label Cue
--------------------------------------------------

function Command.LabelCue(sequence,cue,name)

    Command.Run(
        'Label Cue ' ..
        cue ..
        ' Sequence ' ..
        sequence ..
        ' "' ..
        name ..
        '"'
    )

end

--------------------------------------------------
-- Assign Executor
--------------------------------------------------

function Command.AssignExecutor(sequence,executor)

    Command.Run(
        "Assign Sequence " ..
        sequence ..
        " At Executor " ..
        executor
    )

end

--------------------------------------------------
-- Label Executor
--------------------------------------------------

function Command.LabelExecutor(executor,name)

    Command.Run(
        'Label Executor ' ..
        executor ..
        ' "' ..
        name ..
        '"'
    )

end

--------------------------------------------------
-- Return Module
--------------------------------------------------

return Command
