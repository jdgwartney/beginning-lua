--
-- Created by IntelliJ IDEA.
-- User: dgwartne
-- Date: 9/18/15
-- Time: 10:27 AM
-- To change this template use File | Settings | File Templates.
--
function simpleCounter(max)
    local count = 0
    return function()
        count = count + 1
        if count > max then
            return nil
        end

        return count
    end
end

for v in simpleCounter(50) do
    print(v)
end


