-- table datentyp
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
