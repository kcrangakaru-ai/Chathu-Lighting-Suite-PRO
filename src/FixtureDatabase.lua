--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Fixture Database
--------------------------------------------------

local FixtureDatabase = {}

-- Internal storage
FixtureDatabase.Data = {}

--------------------------------------------------
-- Clear Database
--------------------------------------------------
function FixtureDatabase.Clear()
    FixtureDatabase.Data = {}
end

--------------------------------------------------
-- Add Fixture
--------------------------------------------------
function FixtureDatabase.Add(fixture)

    if fixture then
        table.insert(FixtureDatabase.Data, fixture)
    end

end

--------------------------------------------------
-- Get All Fixtures
--------------------------------------------------
function FixtureDatabase.GetAll()
    return FixtureDatabase.Data
end

--------------------------------------------------
-- Count Fixtures
--------------------------------------------------
function FixtureDatabase.Count()
    return #FixtureDatabase.Data
end

return FixtureDatabase
