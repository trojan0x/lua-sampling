-- Lua Program to determine the factorial of a given number from input
-- formula for a factorial(n) is n * factorial(n-1)
-- | 14th March 2022, Jeff Trojan0x |


function factorial(n)
    if n==0 then
        return 1
    else
        return n * factorial(n-1)
    end
end

print("Enter a number to find its factorial:  ")
-- Read number input
input = io.read("*n")
print("The factorial of your input is ", factorial(input))