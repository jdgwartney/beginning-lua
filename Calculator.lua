--
-- Created by IntelliJ IDEA.
-- User: dgwartne
-- Date: 9/18/15
-- Time: 8:16 AM
-- To change this template use File | Settings | File Templates.
--

function adder(x, y)
end

function subtractor(x, y)
end

function calculate(x, y, f)
    return f(x, y)
end

print("Enter a number")
local x = io.read("*n", "*l")
print("Enter another number")
local y = io.read("*n", "*l")
print("Do you want to add or subtract? (Type + or -)")
local op = io.read(1, "*l")

if op == "-" then
    operation = subtractor
else
    operation = adder
end

print(calculate(x, y), operation)


