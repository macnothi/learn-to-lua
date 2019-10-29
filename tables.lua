-- table datentyp
--[[
local t = {} -- leere tabelle

table.insert( t, 'Karin' )
table.insert( t, "Jens" )
table.insert( t, "Natascha" )

for k,v in pairs(t) do
    print(k,v)
end

function pubHandler(client, t)
    -- body
    if t ~= nil and client ~= nil then
        print(tostring(client))
        for k,v in pairs(t) do
            print(k,v)
        end
    end
end

pubHandler("mqClient", {key1=1.23, key2="feed", key3, key4, key5})

--]]


local ledOut = {}

local ledWords = {
    ES = { 0, 1 },
    IST = { 3, 4, 5, },
    FUENF_M = { 7, 8, 9, 10 }
}

local ledColor = {
    RED = {255,0,0},
    GREEN = {0,255,0},
    BLUE = {0,0,255}
}

local ledBrightness = {
    LOW = 5,
    MEDIUM = 15,
    HIGH = 31
}


for k,v in pairs(mt) do
    print(k,v)
    for l,m in ipairs(v) do
        print(l,m)
    end
end

