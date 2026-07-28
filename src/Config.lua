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
Config.Version = "4.0.0"

--------------------------------------------------
-- System Settings
--------------------------------------------------

Config.Debug = true
Config.SafeMode = true

--------------------------------------------------
-- Group Numbers
--------------------------------------------------

Config.Groups = {

    Beam350 = 901,
    Wash     = 902,
    Beam260  = 903,
    BeeEye   = 904

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
-- Console Support
--------------------------------------------------

Config.Console = {

    GrandMA2 = true,
    GrandMA3 = false

}

return Config
