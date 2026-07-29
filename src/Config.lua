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
Config.Version = "4.1.0"

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
-- Group Numbers
--------------------------------------------------

Config.Groups = {

    All      = 900,
    Beam350  = 901,
    Wash     = 902,
    Beam260  = 903,
    BeeEye   = 904

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
-- Default Colors
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
-- Fixture Keywords
--------------------------------------------------

Config.Keywords = {

    Beam350 = {
        "350",
        "350 BEAM"
    },

    Beam260 = {
        "260",
        "260 BEAM"
    },

    Wash = {
        "WASH"
    },

    BeeEye = {
        "BEE",
        "BEEEYE",
        "B-EYE"
    }

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

return Config
  
