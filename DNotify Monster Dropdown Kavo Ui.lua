game.StarterGui:SetCore("SendNotification", {
        Title = "Entity Notification",
        Text = selected .. " is near!",
        Duration = 3
    })
end)
