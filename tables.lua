-- table datentyp

local t = {} -- leere tabelle

table.insert( t, 'Karin' )
table.insert( t, "Jens" )
table.insert( t, "Natascha" )

for k,v in pairs(t) do
    print(k,v)
end
