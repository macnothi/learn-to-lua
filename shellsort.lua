arVal = {123,98,6,1,-2,7,8,5,-33,9,23,12,76,8,2,27,36,10,56,34}

---[[  
    --print("--")
    for k=1,#arVal do
        io.write(arVal[k]," ")
    end
    io.write("\n")
--]]
gap=math.floor(#arVal/2) -- startwert gap = Länge Array / 2
while gap >=1 do
    -- innere Schleife geht Werte von links nach rechts durch
    for i=gap,#arVal-1 do
        -- 2. innere Schleife tauscht Wert bis nach links durch... 
        for j=i-gap+1,1,-gap do
            --print(gap, i, j, j+gap, arVal[j], arVal[j+gap])
            -- tauschen, wenn linker Wert größer als rechter Wert
            if arVal[j] > arVal[j+gap] then
                temp = arVal[j]
                arVal[j] = arVal[j+gap]
                arVal[j+gap] = temp
            
                --[[  
                print("><")
                for k=1,#arVal do
                    io.write(arVal[k]," ")
                end
                io.write("\n")
                --]]
            end
        end
    end
    
    gap=math.floor(gap/2) -- gap halbieren
end

---[[  
    print("shell sorted")
    for k=1,#arVal do
        io.write(arVal[k]," ")
    end
    io.write("\n")
--]]