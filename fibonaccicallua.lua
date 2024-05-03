-- Function to generate Fibonacci sequence up to 'n' terms
function fibonacci(n)
    local fib = {}  -- Initialize empty table to store Fibonacci sequence
    local a, b = 0, 1  -- Initialize first two Fibonacci numbers
    for i = 1, n do
        fib[i] = a  -- Store current Fibonacci number in the table
        a, b = b, a + b  -- Update Fibonacci numbers for the next iteration
    end
    return fib
end

-- Prompt user for input
io.write("Enter the number of Fibonacci terms to generate: ")
local numTerms = tonumber(io.read())

-- Generate Fibonacci sequence
local fibSeq = fibonacci(numTerms)

-- Display the generated Fibonacci sequence
print("Fibonacci Sequence up to " .. numTerms .. " terms:")
for i = 1, numTerms do
    io.write(fibSeq[i] .. " ")
end
print()  -- Newline for readability
