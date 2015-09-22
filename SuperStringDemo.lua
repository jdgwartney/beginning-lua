--
-- Created by IntelliJ IDEA.
-- User: dgwartne
-- Date: 9/18/15
-- Time: 11:08 AM
-- To change this template use File | Settings | File Templates.
--
local meta = {}
local SS = {}

function SS.new(s)
    local superString = {}
    superString.s = s;
    setmetatable(superString, meta)
    return superString
end

firstName = SS.new("Bill")

function SS.add(s1, s2)
    return s1.s .. s2.s
end

meta.__add = SS.add

firstName = SS.new("Bill")
lastName = SS.new("Gates")
print(firstName + lastName)
