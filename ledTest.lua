
local maxLed = 118
local ledOut = {}

local ledWords = {
    ES = { 0, 1 },
    IST = { 3, 4, 5, },
    FUENF_M = { 7, 8, 9, 10 }
}

local ledColor = {
    RED = {255,0,0},
    GREEN = {0,255,0},
    BLUE = {0,0,255},
    BLACK ={0,0,0}
}

local ledBrightness = {
    LOW = 5,
    MEDIUM = 15,
    HIGH = 31
}

--[
-- reset alls leds
for i=1,maxLed do
    ledOut[i]={0,table.unpack(ledColor.BLACK)}
end
--]]

for k,v in pairs(ledWords) do
    print(k,v)
    for l,m in ipairs(v) do
        print(l,m)
        ledOut[m]={ledBrightness.MEDIUM, table.unpack(ledColor.BLUE)}
    end
end

print(ledBrightness.LOW, table.unpack(ledColor.GREEN))

temp={}
for k,v in ipairs(ledOut) do
    for l,m in ipairs(v) do
        table.insert( temp, m)
    end
end
print(table.unpack(temp))
print( string.char( table.unpack(temp) ))

