function getRandomNumber(maxValue)
    math.randomseed(os.time())
    math.random()
    return math.random(100)
end

function handleGuesses(...)
    lowMessage, highMessage, number = ...


    while answer ~= number do
        local answer = io.read("*n")

        if answer < number then
            print("Too low")
        elseif answer > number then
            print("Too high")
        else
            break
        end

        print("Guess again")
    end
end

local number = getRandomNumber(100)
print("Guess a number")
handleGuesses
print(number)
