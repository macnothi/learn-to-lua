
function square(iteratorMaxCount,currentNumber)

    if currentNumber<iteratorMaxCount
    then
       currentNumber = currentNumber+1
       return currentNumber, currentNumber*currentNumber
    end
     
 end
 
 function squares(iteratorMaxCount)
    return square,iteratorMaxCount,0
 end  
 
 for i,n in squares(5)
 do 
    print(i,n)
 end

 array = {"Lua", "Tutorial"}

for key,value in ipairs(array) 
do
   print(key, value)
end
