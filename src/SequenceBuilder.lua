--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Sequence Builder
--------------------------------------------------

local SequenceBuilder = {}

--------------------------------------------------
-- Build Sequences
--------------------------------------------------

function SequenceBuilder.Build()

    Logger.Info("Building Sequences...")

    if not Config.Sequences then
        Logger.Warn("No Sequences Configured.")
        return
    end

    for _, sequence in ipairs(Config.Sequences) do

        --------------------------------------------------
        -- Store Sequence
        --------------------------------------------------

        Command.StoreSequence(sequence.Number)

        Command.LabelSequence(
            sequence.Number,
            sequence.Name
        )

        --------------------------------------------------
        -- Store Cues
        --------------------------------------------------

        for _, cue in ipairs(sequence.Cues) do

            Command.StoreCue(
                sequence.Number,
                cue.Number
            )

            Command.LabelCue(
                sequence.Number,
                cue.Number,
                cue.Name
            )

        end

        --------------------------------------------------
        -- Assign Executor
        --------------------------------------------------

        Command.AssignExecutor(
            sequence.Number,
            sequence.Executor
        )

        Command.LabelExecutor(
            sequence.Executor,
            sequence.Name
        )

        Logger.Success(
            "Sequence Created : " ..
            sequence.Name
        )

    end

    Logger.Success("Sequence Builder Complete")

end

return SequenceBuilder
