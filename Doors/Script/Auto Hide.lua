local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hideSpots = workspace:WaitForChild("HideSpots"):GetChildren() -- Folder with hiding objects 
function autoHide()
	for _, spot in pairs(hideSpots) do
		if (spot.Position - character.HumanoidRootPart.Position).Magnitude < 10 then
			character:SetPrimaryPartCFrame(CFrame.new(spot.Position + Vector3.new(0, 2, 0)))
			print("Player auto-hid in a hiding spot")
			return
		end
	end
end

wait(5)
autoHide()
