--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Config
--------------------------------------------------

local Config = {}

--------------------------------------------------
-- Plugin Information
--------------------------------------------------

Config.Name = "Chathu Lighting Suite PRO"
Config.Author = "J.A. Chathuranga Karunathilaka"
Config.Version = "5.0.0"

--------------------------------------------------
-- System Settings
--------------------------------------------------

Config.Debug = true
Config.SafeMode = true
Config.AutoClear = true

--------------------------------------------------
-- Console Support
--------------------------------------------------

Config.Console = {
    GrandMA2 = true,
    GrandMA3 = false
}

--------------------------------------------------
-- Fixture Types
--------------------------------------------------

Config.FixtureTypes = {

    {
        Name = "All",
        Group = 900,
        Label = "ALL FIXTURES",
        Keywords = {}
    },

    {
        Name = "Beam350",
        Group = 901,
        Label = "350 BEAM",
        Keywords = {
            "350",
            "350 BEAM"
        }
    },

    {
        Name = "Wash",
        Group = 902,
        Label = "WASH",
        Keywords = {
            "WASH"
        }
    },

    {
        Name = "Beam260",
        Group = 903,
        Label = "260 BEAM",
        Keywords = {
            "260",
            "260 BEAM"
        }
    },

    {
        Name = "BeeEye",
        Group = 904,
        Label = "B-EYE",
        Keywords = {
            "BEE",
            "BEEEYE",
            "B-EYE"
        }
    }

}

--------------------------------------------------
-- Preset Pool Numbers
--------------------------------------------------

Config.PresetPools = {

    Position = 2,
    Color    = 4,
    Beam     = 5,
    Focus    = 6,
    Effects  = 21

}

--------------------------------------------------
-- Position Presets
--------------------------------------------------

Config.PositionPresets = {

    {Number = 1, Name = "MAIN POSITION"},
    {Number = 2, Name = "BEAM UP TEMP"},
    {Number = 3, Name = "WASH UP TEMP"},
    {Number = 4, Name = "ALL ONE"},
    {Number = 5, Name = "POSITION 2.5"},
    {Number = 6, Name = "POSITION 2.6"},
    {Number = 7, Name = "POSITION 2.7"},
    {Number = 8, Name = "POSITION 2.8"},
    {Number = 9, Name = "POSITION 2.9"}

}

--------------------------------------------------
-- Color Presets
--------------------------------------------------

Config.ColorPresets = {

    {Number = 1, Name = "WHITE"},
    {Number = 2, Name = "RED"},
    {Number = 3, Name = "GREEN"},
    {Number = 4, Name = "BLUE"},
    {Number = 5, Name = "CYAN"},
    {Number = 6, Name = "MAGENTA"},
    {Number = 7, Name = "YELLOW"},
    {Number = 8, Name = "AMBER"},
    {Number = 9, Name = "UV"}

}

--------------------------------------------------
-- Default Effects
--------------------------------------------------

Config.DefaultEffects = {

    "Circle",
    "Wave",
    "Fan",
    "Random",
    "Pulse"

}

--------------------------------------------------
-- Return Module
--------------------------------------------------

--------------------------------------------------
-- Default Macros
--------------------------------------------------

Config.Macros = {

    {
        Number = 101,
        Name = "Clear Programmer",
        Lines = {
            "ClearAll"
        }
    },

    {
        Number = 102,
        Name = "Highlight ON",
        Lines = {
            "Highlight"
        }
    },

    {
        Number = 103,
        Name = "Highlight OFF",
        Lines = {
            "Highlight Off"
        }
    },

    {
        Number = 104,
        Name = "Blind ON",
        Lines = {
            "Blind"
        }
    },

    {
        Number = 105,
        Name = "Blind OFF",
        Lines = {
            "Blind Off"
        }
    }

}

--------------------------------------------------
-- Executor Configuration
--------------------------------------------------

Config.Executors = {

    {
        Number = "1.201",
        Type = "Group",
        Object = 900,
        Label = "ALL"
    },

    {
        Number = "1.202",
        Type = "Group",
        Object = 901,
        Label = "350 BEAM"
    },

    {
        Number = "1.203",
        Type = "Group",
        Object = 902,
        Label = "WASH"
    }

}

--------------------------------------------------
-- Default Sequences
--------------------------------------------------

Config.Sequences = {

    {
        Number = 1,
        Name = "ALL ON",

        Executor = "1.201",

        Cues = {
            {
                Number = 1,
                Name = "FULL"
            }
        }
    },

    {
        Number = 2,
        Name = "350 BEAM",

        Executor = "1.202",

        Cues = {
            {
                Number = 1,
                Name = "FULL"
            }
        }
    },

    {
        Number = 3,
        Name = "WASH",

        Executor = "1.203",

        Cues = {
            {
                Number = 1,
                Name = "FULL"
            }
        }
    }

}

return Config
