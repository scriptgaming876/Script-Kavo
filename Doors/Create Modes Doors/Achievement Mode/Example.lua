local player = game.Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")

-- Function to show an Achievement popup
local function unlockAchievement(title, description)
    -- Roblox system message (can be replaced with custom GUI)
    StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = description;
        Duration = 5; -- Seconds visible
    })

    print("Achievement Unlocked:", title)
end

-- Example: Unlock Achievement after beating Nightmare Mode
local function onNightmareModeComplete()
    unlockAchievement("Nightmare Survivor", "You survived the Nightmare Mode. Incredible!")
end

-- Example: Trigger manually (you can link this to Mode completion events)
onNightmareModeComplete()
