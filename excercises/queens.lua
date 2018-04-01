-- eight queens problem
N=8 -- board size N x N, number of queens
S=0 -- found S

-- check if selected position is free to go
function isPlaceOK(a, n, c)
    for i=1, n-1 do
        if (a[i] == c) or (a[i] - i == c - n) or (a[i] + i == c + n) then
            return false -- already booked or attacked via diagonal place
        end  
    end
    return true -- place is O.K.
end

-- print the board with the queens
function printSolution(a)
    for i=1,N do -- rows
        for j=1,N do -- columns
            io.write(a[i] == j and "Q" or "-"," ") -- if queen is there print Q, else -, add a blank
        end
        io.write("\n")
    end
    io.write("\n")
end

-- add all queens n..N to the board a
function addQueen(a,n)
    if (n > N) then -- and (S < 1) then
        printSolution(a)
        S=S+1
    else
        for c=1,N do
            if isPlaceOK(a,n,c) then
                a[n]=c
                addQueen(a,n+1)
            end
        end
    end
end

-- add queens starting from 1
addQueen({},1)
print("Solutions =",S)