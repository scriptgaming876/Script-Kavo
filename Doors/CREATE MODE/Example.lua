local player = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")

local humanoid = player.Character:WaitForChild("Humanoid")
local normalSpeed = 16 -- Normal walking speed
local sprintSpeed = 30 -- Sprinting speed

-- When key pressed (Shift), sprint
uis.InputBegan:Connect(function(input, isTyping)
    if isTyping then return end
    if input.KeyCode == Enum.KeyCode.LeftShift then
        humanoid.WalkSpeed = sprintSpeed
    end
end)

-- When key released (Shift), return to normal
uis.InputEnded:Connect(function(input, isTyping)
    if isTyping then return end
    if input.KeyCode == Enum.KeyCode.LeftShift then
        humanoid.WalkSpeed = normalSpeed
    end
end)

print("Sprint Mode Loaded! Hold SHIFT to sprint.")
