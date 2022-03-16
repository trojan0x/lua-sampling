--[[
The 8th queen puzzle program
]]-- 

-- Set board size to 8

N = 8
-- create function to check if position (n, c) is free from attacks and  call it super

function super(a, c, n)
    -- loop for each queen already placed
    for i = 1, N do
        if (a[i] == c ) or
           (a[i]-i == c - n) or 
           (a[i]+i == c + n) then 
                return false -- i.e place can be attacked

        end
    end
    return true -- can't be attacked

end

-- Print Board

function board(a)
    for i = 1, N do -- for each row
        for j = 1, N do -- for each column
            -- write "X" or "-" and soace " "
            io.write(a[i] == j and "X" or "-", " ")
        end
        io.write("\n")
    end
    io.write("\n") 
end

-- add to board 'a'
function addqueen(a, n)
    if n > N then
        board(a)
    else
        -- try to place nth queen
        for c = 1, N do
            if super(a, n, c) then
                a[n] = c -- place nth queen at column c 
                addqueen(a, n + 1)
            end
        end
    end
end

addqueen()


