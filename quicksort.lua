-- quicksort algorithm implementation, in place
-- JNO 03/2018


--[[ 
    The array will be sorted in a way that all elements smaller then 
    the choosen pivot element are moved to left and all elements bigger then it
    will be moved to the right
    -- The pivot element is the most rigth element in the array
    pivot = arVal[#arVal]
    -- starting from arVal[1] all elements will be compared to the pivot element
    cntSwap=1; cntCompare=1
    while cntCompare < #arVal do 
        if arVal[cntCompare] < Pivot then
            tmp=arVal[cntSwap]
            arVal[cntSwap]=arVal[cntCompare]
            arVal[cntCompare]=tmp
            cntSwap=cntSwap+1
        end
        cntCompare=cntCompare+1
    end

    -- swap the pivot element with the one at the swap counter when end of array reached 
    tmp=arVal[cntSwap]
    arVal[cntSwap]=arVal[#arVal]
    arVal[#arVal]=tmp

    -- do the same with the left part of the array (1 .. cntSwap-1) and rigth (cntSwap+1 .. #arVal)

--]]
arVal = {123,98,6,1,-2,7,8,5,-33,9,23,12,76,8,2,27,36,10,56,34}

function printArray(t)
    -- prints the array in a nice way
    io.write("{")
    for k=1,#t-1 do
        io.write(t[k],",")
    end
    io.write(t[#t],"}\n")
end

---[[
function swap(left, right)
    tmp=arVal[left]
    arVal[left]=arVal[right]
    arVal[right]=tmp
end

function quicksort(first, last )
    if first>=last then return end
    -- The pivot element is the most rigth element in the array 
    pivot=arVal[last]
    -- starting from arVal[1] all elements will be compared to the pivot element
    cntSwap=first; cntCompare=first

    while cntCompare < last do 
        if arVal[cntCompare] < pivot then
            swap(cntSwap,cntCompare)
            cntSwap=cntSwap+1
        end
        cntCompare=cntCompare+1
    end
    swap(cntSwap,last)

    quicksort(first,cntSwap-1)
    quicksort(cntSwap+1,last)
end

-- main program
printArray(arVal)
quicksort(1,#arVal)
print('Quicksorted array:')
printArray(arVal)
