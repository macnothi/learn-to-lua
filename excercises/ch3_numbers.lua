-- exercises from chapter 3

--[[
 Excercise 3.1
 valid numerals are: .0e12=0.0 , 0x12=18, 0xA=10, 0xFFFFFFFF=4294967295, 0x1P10=1024.0, 0.1e1=1.0, 0x0.1p1=2.0
--]]

for i=1,10 do
    print(i, i % 3)
end

function coneVolume(h,b)
    -- h cone height
    -- b angle beta
    local volume=(math.pi/3)*(h^3)/(math.tan(math.pi/2-b/(2*math.pi)))
    return volume
end

