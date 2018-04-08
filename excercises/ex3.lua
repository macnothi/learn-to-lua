-- cone volume function

    function coneVolume(height, angle)
        if height>0 and 180>angle and angle>0 then 
            -- returns volume calculated from heigth and cone angle
            local alpha=math.rad((90-angle/2)) -- half cone angle in rad
            return  math.pi/3*height^3/(math.tan(alpha))^2
        else
            return 0
        end
    end


print(coneVolume(10,30))
print(coneVolume(-10,30))
print(coneVolume(5,210))


-- pseudo random number with standard normal distribution
math.randomseed(os.time())

print(math.random( 6 ))

function randomGauss(x)
    -- return gaussian random number
    n=x or 1
    return math.exp(-(math.random(-n, n)^2/2))/math.sqrt( math.pi*2 )
end

for i=1,10 do
    print(randomGauss())
end

for i=1,10 do
    print(randomGauss(3))
end
