--
-- Created by IntelliJ IDEA.
-- User: dgwartne
-- Date: 9/18/15
-- Time: 10:34 AM
-- To change this template use File | Settings | File Templates.
--

local grades = {}
while true do
    print("Enter student name (q to quit)")
    local name = io.read()

    if name == "q" then
        break
    end

    print("Enter student score")
    local score = io.read("*n","*l")

    grades[name] = score
end

print("Printing grades!")
for k, v in pairs(grades) do
    print("Grade: ")
    print(k, v)
end


