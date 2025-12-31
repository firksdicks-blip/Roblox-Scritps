local Players = game:GetService("Players")
local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

local total = Vector3.new(0,0,0)
local count = 0

for _, v in ipairs(workspace:GetDescendants()) do
    if v:IsA("BasePart") then
        total += v.Position
        count += 1
    end
end

if count > 0 then
    hrp.CFrame = CFrame.new((total / count) + Vector3.new(0,5,0))
end
