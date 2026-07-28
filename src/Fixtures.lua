--------------------------------------------------
-- Fixtures Module
--------------------------------------------------

local Fixtures = {}

Fixtures.List = {}

--------------------------------------------------
-- Clear Database
--------------------------------------------------

function Fixtures.Clear()

    Fixtures.List = {}

end

--------------------------------------------------
-- Add Fixture
--------------------------------------------------

function Fixtures.Add(name, fixtureType)

    table.insert(Fixtures.List, {
        Name = name or "",
        Type = fixtureType or ""
    })

end

--------------------------------------------------
-- Get All Fixtures
--------------------------------------------------

function Fixtures.GetAll()

    return Fixtures.List

end

--------------------------------------------------
-- Count Fixtures
--------------------------------------------------

function Fixtures.Count()

    return #Fixtures.List

end

--------------------------------------------------
-- Fixture Type Helpers
--------------------------------------------------

function Fixtures.IsBeam(name)

    name = string.upper(name or "")

    return string.find(name, "BEAM") ~= nil
        or string.find(name, "350") ~= nil
        or string.find(name, "260") ~= nil

end

function Fixtures.IsWash(name)

    name = string.upper(name or "")

    return string.find(name, "WASH") ~= nil

end

function Fixtures.IsSpot(name)

    name = string.upper(name or "")

    return string.find(name, "SPOT") ~= nil

end

function Fixtures.IsProfile(name)

    name = string.upper(name or "")

    return string.find(name, "PROFILE") ~= nil

end

return Fixtures
