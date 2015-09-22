--
-- Created by IntelliJ IDEA.
-- User: dgwartne
-- Date: 9/22/15
-- Time: 12:49 PM
-- To change this template use File | Settings | File Templates.
--

local CalorieCounter = { count = 0, goal = 200 }

function CalorieCounter:add(amount)
    self.count = self.count + amount
end

function CalorieCounter:didReachGoal()
    return self.count >= self.goal
end

function CalorieCounter:new(t)
    t = t or {}
    setmetatable(t, self)
    self.__index = self
    return t
end

c = CalorieCounter:new{ goal = 1500 }
c:add(500)
print(c.count)
print(c:didReachGoal())

c:add(1000)
print(c.count)
print(c:didReachGoal())

HealthMonitor = CalorieCounter:new{steps = 0, stepGoal = 10000 }

function HealthMonitor:step(amount)
    self.steps = self.steps + amount
end

function HealthMonitor:didReachGoals()
    local goalsReached = 0
    if self.count >= self.goal then
        print("Calorie goa of " .. self.cont .. "reached")
    else
        print("Calorie goal not reached, yet")
    end

    if self.steps >= self.stepGoal then
        print("Step goal of " .. self.setpGoal .. "reached")
    else
        print("Step goal not reached, yet")
    end

    return goalsReached >= 2
end

hm = HealthMonitor:new{goal = 1500, stepGobal = 5000 }
hm:add(900)
hm:step(5001)
print(hm:didReachGoal())

hm:add(700)
print(hm:didReachGoal())

