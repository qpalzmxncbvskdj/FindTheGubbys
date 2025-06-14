print("Created by Xeric Hub | fluflu") -- please keep the credits 😭🙏

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local folder = workspace:WaitForChild("ToFind")

local val = player:WaitForChild("ToFindFolder"):WaitForChild("Asteroid Gubby")
val.Value = true

local ag = folder:FindFirstChild("Asteroid Gubby")
if ag then
    ag.Transparency = 0
    ag.CanTouch = true
    ag.CanCollide = true
end

for _, part in pairs(folder:GetChildren()) do
    if part:IsA("BasePart") then
        hrp.CFrame = part.CFrame
        print("Teleported to", part.Name)
        task.wait(0.01)
    end
end

print("Done")
