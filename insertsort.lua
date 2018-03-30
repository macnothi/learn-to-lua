-- insertion sort algorithm
arVal = {123,98,6,1,-2,7,8,5,-33,9,23,12,76,8,2,27,36,10,56,34}

---[[  
    --print("--")
    for k=1,#arVal do
        io.write(arVal[k]," ")
    end
    io.write("\n")
--]]

-- started bei i=2 bis letztes array Element
for i=2,#arVal do
    compVal=arVal[i] -- zu vergleichendes Element merken
    j=i-1 -- mit linkem Element vergleichen
    while j>=1 do
        if arVal[j] <= compVal then
           break -- wenn linkes Element kleiner, schon richtige Reihenfolge
        end
        arVal[j+1]=arVal[j] -- wenn größer, tausch mit linkem Nachbar
        j=j-1 -- nächstes linkes Element für Vergleich
    end
    arVal[j+1]=compVal
    --[[
    for k=1,#arVal do
        io.write(arVal[k]," ")
    end
    io.write("\n")
    --]]
end

---[[  
    print("insert sorted:")
    for k=1,#arVal do
        io.write(arVal[k]," ")
    end
    io.write("\n")
--]]