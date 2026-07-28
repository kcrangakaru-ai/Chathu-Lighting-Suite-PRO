--------------------------------------------------
-- Chathu Lighting Suite PRO
-- Utils
--------------------------------------------------

local Utils = {}

--------------------------------------------------
-- Convert to Upper Case
--------------------------------------------------

function Utils.Upper(text)

    return string.upper(text or "")

end

--------------------------------------------------
-- Contains Keyword
--------------------------------------------------

function Utils.Contains(text, keyword)

    text = Utils.Upper(text)
    keyword = Utils.Upper(keyword)

    return string.find(text, keyword, 1, true) ~= nil

end

--------------------------------------------------
-- Match Keyword List
--------------------------------------------------

function Utils.MatchKeywords(text, keywords)

    if keywords == nil then
        return false
    end

    for _, keyword in ipairs(keywords) do

        if Utils.Contains(text, keyword) then
            return true
        end

    end

    return false

end

--------------------------------------------------
-- Safe String
--------------------------------------------------

function Utils.SafeString(value)

    return tostring(value or "")

end

--------------------------------------------------
-- Safe Number
--------------------------------------------------

function Utils.SafeNumber(value)

    return tonumber(value) or 0

end

return Utils
