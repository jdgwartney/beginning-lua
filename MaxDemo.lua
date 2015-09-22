--
-- Created by IntelliJ IDEA.
-- User: dgwartne
-- Date: 9/18/15
-- Time: 8:12 AM
-- To change this template use File | Settings | File Templates.
--

function findMax(...)
    local arguments = {... }
    local max = ...
    for i = 1, #arguments do
        if arguments[i] > max then
            max = arguments[i]
        end
     end
end

